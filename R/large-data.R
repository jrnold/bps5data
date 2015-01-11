#' bliss data
#'
#' Dataset bliss \emph{The Basic Practice of Statistics}, 5th edition.
#'
#' Data from Orit Hetzroni, The Effects of Active Versus Passive Computer-Assisted Instruction on the Acquisition, Retention, and Generalization of Blissymbols While Using Elements for Teaching Compounds, Ph.D. thesis, Purdue University, 1995. The thesis concerns computer-aided instruction (CAI) in the use of ``Blissymbols'' for communication.  These symbols are used in teaching special groups of students.  Normal-ability school children were randomly assigned to treatment groups.  The part of the data in the file concerns four groups in a randomized factorial 2 by 2 design.
#' \tabular{lll}{
#'        \tab Active  \tab Passive \cr
#' Before \tab        I   \tab II \cr During \tab       III   \tab IV }
#' The two factors are the learning style (active or passive) of the CAI lesson and the placement of the material to be learned (Blissymbol elements before compounds or elements and compounds during a joint presentation).  We expect active learning to be more successful than passive.  We have no expectation about the effect of placement.  Each subject was tested immediately after the lesson, one week later, and three weeks later.  There are thus three repeated measures for each subject.
#'
#' @name bliss
#' @docType data
#' @family large datasets from \emph{BPS} 5th ed.
#' @usage data("bliss")
#' @format \Sexpr[results=rd]{bps5data:::doc_data("bliss", variables = FALSE)}
#' \describe{
#' \item{ Group }{ I, II, III, IV as above }
#' \item{ Style }{ Act=Active, Pas=Passive }
#' \item{ Place }{ Bef=Before, Dur=During }
#' \item{ Obs }{ Subject identification number (shows how the randomization worked) }
#' \item{ S1 }{ Score (count of symbols correctly recognized, out of 24) after lesson }
#' \item{ S2 }{ Score on a similar test one week after lesson }
#' \item{ S3 }{ Score on a similar test three weeks after lesson }
#' }
#' @references Moore, David S. 2009. \emph{The Basic Practice of Statistics}. 5th edition. New York: W. H. Freeman.
#' @source \url{ http://bcs.whfreeman.com/bps5e/content/cat_110/bps5e_large_datasets.zip }
NULL

#' call data
#'
#' Dataset call \emph{The Basic Practice of Statistics}, 5th edition.
#'
#' Data provided by Larry Brown and Haipeng Shen, from Haipeng Shen, Nonparametric Regression for Problems Involving Lognormal Distributions, Ph.D. thesis, University of Pennsylvania, 2003. These are talk times (seconds) for the 31,492 customer calls handled by the customer service call center of a small bank in a month.  The distribution of service times is strongly right-skewed.  Data analysis shows interesting effects.  There are quite a few very short service times (say, less than 10 seconds).  Short calls are mostly due to agents hanging up on the customer in order to reduce their average talk time and increase the count of calls handled -- these are (flawed) measures of the agents' performance.  The extreme right tail shows 13 times over an hour, one almost 8 hours.  The reason is not known, though equipment malfunction is possible.
#'
#' @name call
#' @docType data
#' @family large datasets from \emph{BPS} 5th ed.
#' @usage data("call")
#' @format \Sexpr[results=rd]{bps5data:::doc_data("call", variables = FALSE)}
#' \describe{
#' \item{ Time }{ Service time }
#' }
#' @references Moore, David S. 2009. \emph{The Basic Practice of Statistics}. 5th edition. New York: W. H. Freeman.
#' @source \url{ http://bcs.whfreeman.com/bps5e/content/cat_110/bps5e_large_datasets.zip }
NULL

#' class data
#'
#' Dataset class \emph{The Basic Practice of Statistics}, 5th edition.
#'
#' Data provided by students (n=270) in a freshman-level course. It is of course even better to survey your own students.
#'
#' @name class
#' @docType data
#' @family large datasets from \emph{BPS} 5th ed.
#' @usage data("class")
#' @format \Sexpr[results=rd]{bps5data:::doc_data("class", variables = FALSE)}
#' \describe{
#' \item{ Sex }{ 0=male, 1=female }
#' \item{ Hand }{ 0=right-handed, 1=left-handed }
#' \item{ Height }{ in inches }
#' \item{ Study }{ Time spent studying on a typical week night (minutes) Beware outliers! }
#' \item{ Coins }{ How much money in coins (not bills) are you carrying? }
#' \item{ Income }{ Guess the income of a "typical American family" (At the time of the survey, the median family income was approximately $30,000.) }
#' }
#' @references Moore, David S. 2009. \emph{The Basic Practice of Statistics}. 5th edition. New York: W. H. Freeman.
#' @source \url{ http://bcs.whfreeman.com/bps5e/content/cat_110/bps5e_large_datasets.zip }
NULL

#' concept data
#'
#' Dataset concept \emph{The Basic Practice of Statistics}, 5th edition.
#'
#' Data from Darlene Gordon, The Relationships Among Acade mic Self-Concept, Academic Achievement, and Persistence with Self-Attribution, Study Habits, and Perceived School Environment, Ph.D. thesis, Purdue University, 1997.
#' The data describe 78 seventh-grade students in a rural midwestern school.  The research concerned the relationship between the students' ``self-concept'' and their academic performance.
#'
#' @name concept
#' @docType data
#' @family large datasets from \emph{BPS} 5th ed.
#' @usage data("concept")
#' @format \Sexpr[results=rd]{bps5data:::doc_data("concept", variables = FALSE)}
#' \describe{
#' \item{ Obs }{ Subject identification number }
#' \item{ GPA }{ Grade point average }
#' \item{ IQ }{ IQ test score }
#' \item{ Age }{ in years }
#' \item{ Sex }{ 1=Female, 2=Male }
#' \item{ SC }{ Overall score on the Piers-Harris Children's Self-Concept Scale }
#' \item{ C1 }{ cluster score for behavior }
#' \item{ C2 }{ cluster score for school status }
#' \item{ C3 }{ culster score for physical appearance }
#' \item{ C4 }{ cluster score for anxiety }
#' \item{ C5 }{ cluster score for popularity }
#' \item{ C6 }{ cluster score for happiness }
#' }
#' @references Moore, David S. 2009. \emph{The Basic Practice of Statistics}. 5th edition. New York: W. H. Freeman.
#' @source \url{ http://bcs.whfreeman.com/bps5e/content/cat_110/bps5e_large_datasets.zip }
NULL

#' education data
#'
#' Dataset education \emph{The Basic Practice of Statistics}, 5th edition.
#'
#' Years of education a child can expect to receive in 177 countries. That is, the data reflect enrollment patterns for children rather than actual education attainment for current adults.  For men, women, and overall.  From the United Nations Statistics Division, at unstats.un.org
#'
#' @name education
#' @docType data
#' @family large datasets from \emph{BPS} 5th ed.
#' @usage data("education")
#' @format \Sexpr[results=rd]{bps5data:::doc_data("education", variables = FALSE)}
#' \describe{
#' \item{ Country }{ Country }
#' \item{ Total }{ Years of education children can expect to receive. }
#' \item{ Men }{ Years of education men can expect to receive. }
#' \item{ Women }{ Years of education women can expect to receive. }
#' }
#' @references Moore, David S. 2009. \emph{The Basic Practice of Statistics}. 5th edition. New York: W. H. Freeman.
#' @source \url{ http://bcs.whfreeman.com/bps5e/content/cat_110/bps5e_large_datasets.zip }
NULL

#' floridavote data
#'
#' Dataset floridavote \emph{The Basic Practice of Statistics}, 5th edition.
#'
#' Voting data for Florida counties in the 2000 presidential election. The elction was famously close.  Palm Beach County had a confusing ballot arrangement that led some voters to choose Buchanan in error. Data analysis will disclose the effects of this.  See the Statistical Thinking intoduction for students for a scatterplot.
#'
#' @name floridavote
#' @docType data
#' @family large datasets from \emph{BPS} 5th ed.
#' @usage data("floridavote")
#' @format \Sexpr[results=rd]{bps5data:::doc_data("floridavote", variables = FALSE)}
#' \describe{
#' \item{ County }{  }
#' \item{ Gore }{  }
#' \item{ Bush }{  }
#' \item{ Buchanan }{  }
#' \item{ Nader }{  }
#' \item{ GOREpct }{  }
#' \item{ BUSHpct }{  }
#' \item{ BUCHpct }{  }
#' }
#' @references Moore, David S. 2009. \emph{The Basic Practice of Statistics}. 5th edition. New York: W. H. Freeman.
#' @source \url{ http://bcs.whfreeman.com/bps5e/content/cat_110/bps5e_large_datasets.zip }
NULL

#' foodsafety data
#'
#' Dataset foodsafety \emph{The Basic Practice of Statistics}, 5th edition.
#'
#' Data from Huey Chern Boo, Consumers' Perceptions and Concerns About Safety and Healthfulness of Food Served at Fairs and Festivals, M.S. thesis, Purdue University, 1997. Random samples of people attending outdoor fairs and festivals in the midwest.  Some of these data are discussed in the Complement Chapter  25 on Nonparametric Tests.
#'
#' @name foodsafety
#' @docType data
#' @family large datasets from \emph{BPS} 5th ed.
#' @usage data("foodsafety")
#' @format \Sexpr[results=rd]{bps5data:::doc_data("foodsafety", variables = FALSE)}
#' \describe{
#' \item{ Subject }{  }
#' \item{ Hfair }{  }
#' \item{ Sfair }{  }
#' \item{ Sfast }{  }
#' \item{ Srest }{  }
#' \item{ Sex }{  }
#' }
#' @references Moore, David S. 2009. \emph{The Basic Practice of Statistics}. 5th edition. New York: W. H. Freeman.
#' @source \url{ http://bcs.whfreeman.com/bps5e/content/cat_110/bps5e_large_datasets.zip }
NULL

#' income data
#'
#' Dataset income \emph{The Basic Practice of Statistics}, 5th edition.
#'
#' Personal income and demographic data from the March, 2008 supplement to the Current Population Survey.  Data on all 82,249 respondents aged 25 to 64 years who were currently in the labor force and who listed their race as Asian, black, or white.  This is a random sample from all such residents of the United States.
#'
#' @name income
#' @docType data
#' @family large datasets from \emph{BPS} 5th ed.
#' @usage data("income")
#' @format \Sexpr[results=rd]{bps5data:::doc_data("income", variables = FALSE)}
#' \describe{
#' \item{ Sex }{ 1=male, 2=female }
#' \item{ Income }{ Total personal income, dollars }
#' \item{ Race }{ Person's race, 1=white, 2=black, 4=Asian }
#' \item{ Age }{ Person's age in years }
#' \item{ Educ }{ Educational attainment. 1=less than high school, 2=some high school but no diploma, 3=high school graduate, 4=some college but less than bachelor's degree, 5=bachelor's degree, 6=master's, professional, or doctoral degree. (Educational attainment is condensed from 16 levels in the CPS data.) }
#' }
#' @references Moore, David S. 2009. \emph{The Basic Practice of Statistics}. 5th edition. New York: W. H. Freeman.
#' @source \url{ http://bcs.whfreeman.com/bps5e/content/cat_110/bps5e_large_datasets.zip }
NULL

#' literacy data
#'
#' Dataset literacy \emph{The Basic Practice of Statistics}, 5th edition.
#'
#' Adult literacy rates (percent) for 139 countries.  For men, women, and overall.  A person is literate if he or she can both read and write simple statements.   From the United Nations Statistics Division, at unstats.un.org.
#'
#' @name literacy
#' @docType data
#' @family large datasets from \emph{BPS} 5th ed.
#' @usage data("literacy")
#' @format \Sexpr[results=rd]{bps5data:::doc_data("literacy", variables = FALSE)}
#' \describe{
#' \item{ Country }{ Country }
#' \item{ Total }{ Literacy rate (percent) }
#' \item{ Men }{ Literacy rate, men (percent) }
#' \item{ Women }{ Literacy rate, woman (percent) }
#' }
#' @references Moore, David S. 2009. \emph{The Basic Practice of Statistics}. 5th edition. New York: W. H. Freeman.
#' @source \url{ http://bcs.whfreeman.com/bps5e/content/cat_110/bps5e_large_datasets.zip }
NULL

#' newt data
#'
#' Dataset newt \emph{The Basic Practice of Statistics}, 5th edition.
#'
#' Data provided by Drina Iglesia, Purdue University.  The data are part of a larger study reported in D. D. S. Iglesia, E. J. Cragoe, Jr., and J. W. Vanable, ``Electric field strength and epithelization in the newt (Notophthalmus viridescens),'' Journal of Experimental Zoology, 274 (1996), pp.\ 56--62.
#' Data on healing of cuts in newts under several conditions of applied electric field.  See Exercise 24.33 for a description of the experiment.  Table 24.5 contains partial data.  Here are the full data.  
#'
#' @name newt
#' @docType data
#' @family large datasets from \emph{BPS} 5th ed.
#' @usage data("newt")
#' @format \Sexpr[results=rd]{bps5data:::doc_data("newt", variables = FALSE)}
#' \describe{
#' \item{ Field }{ Intended electrical field strength as a multiple of the natural strength, which is Field=1.  This distinguishes the 5 groups of subjects. }
#' \item{ FieldExp }{ Measured field strength in the experimental  (field applied) and control (natural) This is a check on how well the experimenters succeeded in imposing the  conditions they aimed for in groups other than 1.  In group 1,  we see natural limb-to-limb variation. }
#' \item{ FieldCtrl }{ Measured field strength in the experimental  (field applied) and control (natural) This is a check on how well the experimenters succeeded in imposing the  conditions they aimed for in groups other than 1.  In group 1,  we see natural limb-to-limb variation. }
#' \item{ RateExp }{ Healing rates (micrometers per hour) in the experimental limbs.  This is the response variable. }
#' \item{ RateCtrl }{ Healing rates (micrometers per hour) in the control limbs.  This is the response variable. }
#' }
#' @references Moore, David S. 2009. \emph{The Basic Practice of Statistics}. 5th edition. New York: W. H. Freeman.
#' @source \url{ http://bcs.whfreeman.com/bps5e/content/cat_110/bps5e_large_datasets.zip }
NULL

#' reading data
#'
#' Dataset reading \emph{The Basic Practice of Statistics}, 5th edition.
#'
#' Table 1 from James T. Fleming, ``The measurement of children's perception of difficulty in reading materials,'' Research in the teaching of English, 1 (1967), pp. 136--156.  The data describe 60 5th-graders randomly sampled from one elementary school.
#' Some issues: relationship between measured and self-estimated reading ability; IQ and reading ability; sex differences; LSS nand measured reading ability (can children choose appropriate level material?)
#'
#' @name reading
#' @docType data
#' @family large datasets from \emph{BPS} 5th ed.
#' @usage data("reading")
#' @format \Sexpr[results=rd]{bps5data:::doc_data("reading", variables = FALSE)}
#' \describe{
#' \item{ Obs }{ Subject identification number }
#' \item{ Sex }{ F=Female, M=Male }
#' \item{ Lss }{ Median grade level of student's selection of "best for me to read" (based on 8 trials, each with 4 choices at grade levels 3, 5, 7, 9) }
#' \item{ IQ }{ IQ test score }
#' \item{ Read }{ Score on reading subtest of the Metropolitan Achievement Test }
#' \item{ Est }{ Student's own estimate of his/her reading ability, scale 1 to 5, reversed from the paper so that 1 = lowest, 5 = highest }
#' }
#' @references Moore, David S. 2009. \emph{The Basic Practice of Statistics}. 5th edition. New York: W. H. Freeman.
#' @source \url{ http://bcs.whfreeman.com/bps5e/content/cat_110/bps5e_large_datasets.zip }
NULL

#' verizon data
#'
#' Dataset verizon \emph{The Basic Practice of Statistics}, 5th edition.
#'
#' Local telephone companies must provide repair service for customers of other telephone companies who lease their lines.  The local company is called the ILEC (Incumbent Local Exchange Carrier).  Competing companies are CLECs (Competing Local Exchange Carriers).  The data are a random sample of 1687 repair times (hours) from areas in which Verizon is the ILEC.  Of these, 1664 are Verizon's own customers (ILEC) and 23 are customers of other companies (CLEC). The distributions of repair times are strongly skewed.
#' Data courtesy of Tim Hesterberg, Insightful Corporation.
#'
#' @name verizon
#' @docType data
#' @family large datasets from \emph{BPS} 5th ed.
#' @usage data("verizon")
#' @format \Sexpr[results=rd]{bps5data:::doc_data("verizon", variables = FALSE)}
#' \describe{
#' \item{ Time }{ Repair time in hours }
#' \item{ Group }{ ILEC (Verizon) customer or CLEC customer }
#' }
#' @references Moore, David S. 2009. \emph{The Basic Practice of Statistics}. 5th edition. New York: W. H. Freeman.
#' @source \url{ http://bcs.whfreeman.com/bps5e/content/cat_110/bps5e_large_datasets.zip }
NULL

