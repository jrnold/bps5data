library("whisker")
library("stringr")
library("yaml")

DATA_SETS_URL <- "http://bcs.whfreeman.com/bps5e/content/cat_030/PC-Text.zip"

LARGE_DATASETS_URL <- "http://bcs.whfreeman.com/bps5e/content/cat_110/bps5e_large_datasets.zip"

parse_dataset_name <- function(name) {
  parsed <- str_match(name, "(ex|eg|ta|fig)([0-9]{2}.*)")[1, ]
  type <- switch(parsed[2],
    ex = "Exercise",
    eg = "Example",
    fig = "Figure",
    ta = "Table"
    )
  list(type = type, number = parsed[3])
}
get_chapter_name <- function(name) {
  parsed <- str_match(name, "(ex|eg|ta|fig)([0-9]{2})\\..*")[1, ]
  parsed[3]
}

render_template <- function(src, dst, data = list()) {
  template <- paste(readLines(src), collapse = "\n")
  cat(whisker.render(template, data), file = dst)
}

download_and_unzip <- function(url) {
  # create a temporary directory
  td = tempdir()
  # create the placeholder file
  tf = tempfile(tmpdir=td, fileext=".zip")
  # download into the placeholder file
  download.file(url, tf)
  unzip(tf, exdir = td)
}

dir.create("data", showWarnings = FALSE)
dir.create("R", showWarnings = FALSE)



files <- download_and_unzip(DATA_SETS_URL)
datasets <- list()
for (dataset in grep("\\.dat$", files, value = TRUE)) {
    origname <- tools::file_path_sans_ext(basename(dataset))
    dataname <- make.names(origname)
    assign(dataname, read.delim(dataset, header = TRUE, stringsAsFactors = FALSE,
                                fileEncoding = "latin1", encoding = "UTF-8"))
    save(list = dataname, file = file.path("data", sprintf("%s.rda", dataname)),
         compress = "bzip2")
    parsed_name <- parse_dataset_name(dataname)
    chapternum <- as.integer(get_chapter_name(dataname))
    chapterstr <- str_c("Chapter ", chapternum)
    family <- str_c("datasets from ", chapterstr, " of \\emph{BPS} 5th ed.")
    datasets[[dataname]] <- list(url = DATA_SETS_URL,
                                 type = parsed_name$type,
                                 family = family,
                                 number = parsed_name$number,
                                 name = dataname)
    rm(list = dataname)
}
tpl_data <- list(datasets = unname(datasets))
render_template("data.R.template", "R/data.R", data = tpl_data)

metadata <- yaml.load_file("large-datasets-descriptions.yaml")
datasets2 <- list()
files2 <- download_and_unzip(LARGE_DATASETS_URL)
for (dataset in grep("\\.dat$", files2, value = TRUE)) {
  origname <- tools::file_path_sans_ext(basename(dataset))
  dataname <- make.names(origname)
  assign(dataname, read.delim(dataset, header = TRUE, stringsAsFactors = FALSE,
                              fileEncoding = "latin1", encoding = "UTF-8"))
  save(list = dataname, file = file.path("data", sprintf("%s.rda", dataname)),
       compress = "bzip2")
  family <- "large datasets from \\emph{BPS} 5th ed."
  datasets2[[dataname]] <- list(url = LARGE_DATASETS_URL,
                                name = dataname, family = family,
                                description = str_split(metadata[[dataname]][["description"]], "\n")[[1]],
                                variables = metadata[[dataname]][["variables"]])
  rm(list = dataname)
}
render_template("large-datasets.R.template", "R/large-data.R",
                data = list(datasets = unname(datasets2)))

indexnames <- c(str_c("Chapter ", 1:28), "Large Datasets")
index <- replicate(length(indexnames), character())
names(index) <- indexnames
for (i in datasets) {
  chapternum <- as.integer(get_chapter_name(i$name))
  chapterstr <- str_c("Chapter ", chapternum)
  index[[chapterstr]] <- append(index[[chapterstr]], i$name)
}
index[["Large Datasets"]] <- unname(sapply(datasets2, function(x) x[["name"]]))
for (i in names(index)) {
  if (length(index[[i]])) {
    index[[i]] <- str_c("\\link[bps5data]{", sort(index[[i]]), "}")
  } else {
    index[[i]] <- NULL
  }
}
render_template("bps5data-package.R.template", "R/bps5data-package.R",
                data = list(datasets = iteratelist(index)))
