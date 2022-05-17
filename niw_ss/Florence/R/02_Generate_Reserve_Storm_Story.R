# 02_Generate_Reserve_Storm_Story.R
# updated 4/13/2022
#
# Populate the Storm Story Powerpoint/PDF template using variables 
# that have been set in the excel template. 
#
# Author: Ben Crary (bcrary@limno.com)


# Load libraries ----
library(officer)
library(readxl)
library(dplyr)
library(SWMPrStorm)


# Load parameters/variables ---
source('R/02-00_Load_Story_Template_Variables.R')

# With parameters loaded, generate the template ----
source('R/02-01_Populate_Story_Template_Page_1.R')
source('R/02-02_Populate_Story_Template_Page_2.R')
source('R/02-03_Populate_Story_Template_Page_3.R')
source('R/02-04_Populate_Story_Template_Page_4.R')
source('R/02-05_Populate_Story_Template_Page_5.R')
source('R/02-06_Populate_Story_Template_Page_6.R')


file.remove("template_files/storm_report_raw.pptx")
print(story, target = 'template_files/storm_report_raw.pptx')



