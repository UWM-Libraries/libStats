library(tidyverse)
library(rmarkdown)

## CHANGE THESE PARAMETERS AS NECESSARY (KEEP DATE/TIME FORMATTING AS YYYY-MM-DD HH:MM:SS)

f_in <- "C:/Users/briney/Documents/JobDocs/LibStats/Processing/LibStats_R/Reports/data"
f_out <- "C:/Users/briney/Documents/JobDocs/LibStats/Processing/LibStats_R/Reports/reports"
period_Start <- "2018-01-01 00:00:00"
period_End <- "2018-05-30 11:59:59"


## Edit dates to add to file name

startDate <- paste(substr(period_Start, 1,4),substr(period_Start, 6,7),substr(period_Start, 9,10),sep="")
endDate <- paste(substr(period_End, 1,4),substr(period_End, 6,7),substr(period_End, 9,10),sep="")


## Create reports

fname <- paste(f_out, "/", startDate, "to", endDate, "_Statbot_dept_", sep="")

render("LibStats_report_dept.Rmd", params=list(
  fpath=f_in, periodStart=period_Start, periodEnd=period_End, dept="AGSL"),
  output_file = paste(fname,"AGSL.html", sep=""))

render("LibStats_report_dept.Rmd", params=list(
  fpath=f_in, periodStart=period_Start, periodEnd=period_End, dept="Archives"),
  output_file = paste(fname,"Archives.html", sep=""))

render("LibStats_report_dept.Rmd", params=list(
  fpath=f_in, periodStart=period_Start, periodEnd=period_End, dept="Curriculum Collection / Music Library"),
  output_file = paste(fname, "CurriculumMusic.html", sep=""))

render("LibStats_report_dept.Rmd", params=list(
  fpath=f_in, periodStart=period_Start, periodEnd=period_End, dept="Digital Humanities Lab"),
  output_file = paste(fname, "DHLab.html", sep=""))

render("LibStats_report_dept.Rmd", params=list(
  fpath=f_in, periodStart=period_Start, periodEnd=period_End, dept="Special Collections"),
  output_file = paste(fname, "SpecialCollections.html", sep=""))

render("LibStats_report_dept.Rmd", params=list(
  fpath=f_in, periodStart=period_Start, periodEnd=period_End, dept="User Services"),
  output_file = paste(fname, "UserServices.html", sep=""))

render("LibStats_report_RHD.Rmd", params=list(
  fpath=f_in, periodStart=period_Start, periodEnd=period_End),
  output_file = paste(fname, "RHD.html", sep=""))

render("LibStats_report_welcome.Rmd", params=list(
  fpath=f_in, periodStart=period_Start, periodEnd=period_End),
  output_file = paste(fname, "Welcome.html", sep=""))

fname <- paste(f_out, "/", startDate, "to", endDate, "_Statbot_person_", sep="")

render("LibStats_report_person.Rmd", params=list(
  fpath=f_in, periodStart=period_Start, periodEnd=period_End, person="ganski"),
  output_file = paste(fname, "ganski.html", sep=""))

render("LibStats_report_person.Rmd", params=list(
  fpath=f_in, periodStart=period_Start, periodEnd=period_End, person="nbungert"),
  output_file = paste(fname, "nbungert.html", sep=""))

render("LibStats_report_person.Rmd", params=list(
  fpath=f_in, periodStart=period_Start, periodEnd=period_End, person="kristinw"),
  output_file = paste(fname, "kristinw.html", sep=""))

render("LibStats_report_person.Rmd", params=list(
  fpath=f_in, periodStart=period_Start, periodEnd=period_End, person="lkopecky"),
  output_file = paste(fname, "lkopecky.html", sep=""))

render("LibStats_report_person.Rmd", params=list(
  fpath=f_in, periodStart=period_Start, periodEnd=period_End, person="kbowes"),
  output_file = paste(fname, "kbowes.html", sep=""))

render("LibStats_report_person.Rmd", params=list(
  fpath=f_in, periodStart=period_Start, periodEnd=period_End, person="kabina"),
  output_file = paste(fname, "kabina.html", sep=""))

render("LibStats_report_person.Rmd", params=list(
  fpath=f_in, periodStart=period_Start, periodEnd=period_End, person="wadecg"),
  output_file = paste(fname, "wadecg.html", sep=""))

render("LibStats_report_person.Rmd", params=list(
  fpath=f_in, periodStart=period_Start, periodEnd=period_End, person="mathiasm"),
  output_file = paste(fname, "mathiasm.html", sep=""))

render("LibStats_report_person.Rmd", params=list(
  fpath=f_in, periodStart=period_Start, periodEnd=period_End, person="thornto4"),
  output_file = paste(fname, "thornto4.html", sep=""))

render("LibStats_report_person.Rmd", params=list(
  fpath=f_in, periodStart=period_Start, periodEnd=period_End, person="briney"),
  output_file = paste(fname, "briney.html", sep=""))

render("LibStats_report_person.Rmd", params=list(
  fpath=f_in, periodStart=period_Start, periodEnd=period_End, person="skorolev"),
  output_file = paste(fname, "skorolev.html", sep=""))
