Project: LibStats
Author: Kristin Briney
Institution: University of Wisconsin-Milwaukee Libraries
Creation data: June 2018

This project processes data from the UWM Libraries' Public Services Statistics Tool (aka. StatBot), which uses a Qualtrics form. The code does two things: 1) clean the data and segment it out from one messy CSV file into several compact CSVs, and 2) generate reports using the cleaned data for various departments, service desks, and individuals within the library (reports are specific to a given time range).



How to run this code from scratch:
	Setup
		Install R
		Install RStudio
	
		Open RStudio
			Type in console "install.packages("tidyverse")" and hit return
			Type in console "install.packages("knitr")" and hit return
			Type in console "install.packages("shiny")" and hit return
			Type in console "install.packages("rmarkdown")" and hit return
	
	Download data
		In Qualtrics, navigate to "Export data"
		Export as CSV, using the following settings:
			"Download all fields"
			"Use choice text"
			Under "more options", select "remove line breaks"
		Save file with download date (YYYY-MM-DD)
	
	Clean data	
		Open RStudio software
		Open "LibStats_cleanup.R" file
		
		Create folder for cleaned data to be saved to
		Place copy of raw Qualtrics data in this folder
		
		Change "fpath" variable in "LibStats_cleanup.R" to file path for cleaned data folder (use forward slashes)
		Change "fname" variable in "LibStats_cleanup.R" to name of raw input data
		
		With cursor in "LibStats_cleanup.R" file, hit Ctrl+Shift+Return
			(This will run the cleanup code)
		Check that new CSV files were added to the designated output folder
		
	Generate report
		Open RStudio software
		Open "LibStats_report_batch.R" file
		
		Change "f_in" variable in "LibStats_report_batch.R" to file path for cleaned data folder (use forward slashes)
		Change "f_out" variable in "LibStats_report_batch.R" to file path for output report folder (use forward slashes)
		
		Change "periodStart" variable in "LibStats_report_batch.R" to start date for	reporting period (use YYYY-MM-DD HH:MM:SS formatting)
		Change "periodEnd" variable in "LibStats_report_batch.R" to end date for reporting period (use YYYY-MM-DD HH:MM:SS formatting)
		
		With cursor in "LibStats_report_batch.R" file, hit Ctrl+Shift+Return
			(This will run the reporting code)
		Check that new report files were added to the designated output folder