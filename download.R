library("whisker")

DATA_SETS_URL <- "http://bcs.whfreeman.com/bps5e/content/cat_030/PC-Text.zip"

LARGE_DATASETS_URL <- "http://bcs.whfreeman.com/bps5e/content/cat_110/bps5e_large_datasets.zip"

render_doc <- function(...) {
  path <- "doc.template"
  template <- readLines(path)
  whisker::whisker.render(template, data = list(...))
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
    datasets[[dataname]] <- DATA_SETS_URL
}


files2 <- download_and_unzip(LARGE_DATASETS_URL)
for (dataset in grep("\\.dat$", files2, value = TRUE)) {
    origname <- tools::file_path_sans_ext(basename(dataset))
    dataname <- make.names(origname)
    assign(dataname, read.delim(dataset, header = TRUE, stringsAsFactors = FALSE,
                                fileEncoding = "latin1", encoding = "UTF-8"))
    save(list = dataname, file = file.path("data", sprintf("%s.rda", dataname)),
         compress = "bzip2")
    datasets[[dataname]] <- LARGE_DATASETS_URL
}


render_template <- function(src, dst, data = list()) {
  template <- paste(readLines(src), collapse = "\n")
  cat(whisker.render(template, data), file = dst)
}
tpl_data <- list(datasets = iteratelist(datasets))
render_template("data.R.template", "R/data.R", data = tpl_data)












