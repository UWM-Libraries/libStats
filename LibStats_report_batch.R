library(tidyverse)
library(rmarkdown)

## CHANGE THESE PARAMETERS AS NECESSARY (KEEP DATE/TIME FORMATTING AS YYYY-MM-DD HH:MM:SS)

f_in <- "C:/Users/briney/Documents/JobDocs/LibStats/Reports/data"
f_out <- "C:/Users/briney/Documents/JobDocs/LibStats/Reports/reports"
period_Start <- "2018-01-01 00:00:00"
period_End <- "2018-05-30 23:59:59"


## Edit dates to add to file name

startDate <- paste(substr(period_Start, 1,4),substr(period_Start, 6,7),substr(period_Start, 9,10),sep="")
endDate <- paste(substr(period_End, 1,4),substr(period_End, 6,7),substr(period_End, 9,10),sep="")


## Create department reports

fname <- paste(f_out, "/", startDate, "to", endDate, "_Statbot_dept_", sep="")
deptName <- tibble("AGSL", "Archives", "Curriculum Collection / Music Library", 
                   "Digital Humanities Lab", "Special Collections", "User Services")
deptFName <- tibble("AGSL", "Archives", "CurriculumMusic", 
                    "DHLab", "SpecialCollections", "UserServices")

for (i in 1:dim(deptName)) {
  render("LibStats_report_dept.Rmd", params=list(
    fpath=f_in, periodStart=period_Start, periodEnd=period_End, dept=deptName[i]),
    output_file = paste(fname, deptFName[i], ".html", sep=""))
}


# Create RHD and Welcome Desk reports

render("LibStats_report_RHD.Rmd", params=list(
  fpath=f_in, periodStart=period_Start, periodEnd=period_End),
  output_file = paste(fname, "RHD.html", sep=""))

render("LibStats_report_welcome.Rmd", params=list(
  fpath=f_in, periodStart=period_Start, periodEnd=period_End),
  output_file = paste(fname, "Welcome.html", sep=""))


## Create personal reports

fname <- paste(f_out, "/", startDate, "to", endDate, "_Statbot_person_", sep="")
persName <- tibble("ganski", "nbungert", "kristinw", "lkopecky", "kbowes", "kabina", 
                   "wadecg", "mathiasm", "thornto4", "briney", "skorolev")

for (i in 1:dim(persName)) {
  render("LibStats_report_person.Rmd", params=list(
    fpath=f_in, periodStart=period_Start, periodEnd=period_End, person=persName[i]),
    output_file = paste(fname, persName[i], ".html", sep=""))
  }