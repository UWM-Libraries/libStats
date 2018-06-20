Generate StatBot Reports

Setup
	Install R
	Install RStudio
	
	Open RStudio
		Type in console: "install.packages("tidyverse")" and hit return
		Type in console: "install.packages("knitr")" and hit return
		Type in console: "install.packages("shiny")" and hit return
		Type in console: "install.packages("rmarkdown")" and hit return
	
Clean data	
	Open RStudio software
	Open "LibStats_cleanup.R" file
	
	Create folder for cleaned data to be saved to
	Place copy of raw Qualtrics data in this folder
	
	Change "fpath" variable in "LibStats_cleanup.R" to file path for cleaned data folder
	Change "fname" variable in "LibStats_cleanup.R" to name of raw input data
	
	With cursor in "LibStats_cleanup.R" file, hit Ctrl+Shift+Return
		(This will run the cleanup code)
	Check that 7 new CSV files were added to the designated output folder
	
Generate report
	Open RStudio software
	Open "LibStats_report_batch.R" file
	
	Change "f_in" variable in "LibStats_report_batch.R" to file path for cleaned data folder
	Change "f_out" variable in "LibStats_report_batch.R" to file path for output report folder
	Change "periodStart" variable in "LibStats_report_batch.R" to start date for	reporting period
	Change "periodEnd" variable in "LibStats_report_batch.R" to end date for reporting period
	
	With cursor in "LibStats_report_batch.R" file, hit Ctrl+Shift+Return
		(This will run the reporting code)
	Check that new report files were added to the designated output folder