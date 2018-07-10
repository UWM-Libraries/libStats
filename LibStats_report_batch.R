## Name: LibStats_report_batch.R
## Created: June 2018 by Kristin Briney
## Purpose: This code takes StatBot data cleaned by LibStats_cleanup.R and automatically creates
##          reports for a list of library departments and people. Date range must be specified.


library(tidyverse)
library(rmarkdown)

## CHANGE THESE PARAMETERS AS NECESSARY (KEEP DATE/TIME FORMATTING AS YYYY-MM-DD HH:MM:SS)

f_in <- "C:/Users/briney/Documents/JobDocs/LibStats/Reports/data"
f_out <- "C:/Users/briney/Documents/JobDocs/LibStats/Reports/reports"
period_Start <- "2018-01-01 00:00:00"
period_End <- "2018-05-30 23:59:59"


## Edit strings to add to file name

startDate <- paste(substr(period_Start, 1,4),substr(period_Start, 6,7),substr(period_Start, 9,10),sep="")
endDate <- paste(substr(period_End, 1,4),substr(period_End, 6,7),substr(period_End, 9,10),sep="")

fname1 <- paste(f_out, "/", "Statbot_", sep="")
fname2 <- paste("_", startDate, "to", endDate, sep="")


## Create department reports

deptName <- tibble("AGSL", "Archives", "Curriculum Collection / Music Library", 
                   "Digital Humanities Lab", "Special Collections", "User Services")
deptFName <- tibble("AGSL", "Archives", "CurriculumMusic", 
                    "DHLab", "SpecialCollections", "UserServices")

for (i in 1:dim(deptName)[2]) {
  render("LibStats_report_dept_pdf.Rmd", params=list(
    fpath=f_in, periodStart=period_Start, periodEnd=period_End, dept=as.character(deptName[i])),
    output_file = paste(fname1, deptFName[i], fname2, ".pdf", sep=""))
}


## Create AGSL collections spreadsheet

AGSLcol <- read_csv(paste(f_in, "AGSL.csv", sep="/"))
AGSL <- filter(AGSLcol, Date>=period_Start & 
                 Date<=period_End)
write_csv(AGSL, paste(fname1, "AGSL", fname2, ".csv", sep=""))


# Create RHD and Welcome Desk reports

render("LibStats_report_RHD.Rmd", params=list(
  fpath=f_in, periodStart=period_Start, periodEnd=period_End),
  output_file = paste(fname1, "RHD", fname2, ".pdf", sep=""))

render("LibStats_report_welcome.Rmd", params=list(
  fpath=f_in, periodStart=period_Start, periodEnd=period_End),
  output_file = paste(fname1, "Welcome", fname2, ".pdf", sep=""))


## Create personal reports

persName <- tibble("ganski", "nbungert", "kristinw", "lkopecky", "kbowes", "kabina", 
                   "wadecg", "mathiasm", "thornto4", "briney", "skorolev")

for (i in 1:dim(persName)[2]) {
  render("LibStats_report_person_pdf.Rmd", params=list(
    fpath=f_in, periodStart=period_Start, periodEnd=period_End, person=as.character(persName[i])),
    output_file = paste(fname1, persName[i], fname2, ".pdf", sep=""))
}


## Create stories summary

render("LibStats_report_stories.Rmd", params=list(
  fpath=f_in, periodStart=period_Start, periodEnd=period_End),
  output_file = paste(fname1, "Stories", fname2, ".html", sep=""))