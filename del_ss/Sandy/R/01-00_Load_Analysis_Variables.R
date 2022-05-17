# 01-00_Load_Analysis_Variables.R
# updated 4/13/2022
#
# Load requirements and set output environment for SWMPrStorm 
# data analyses. 
#
# Author: Ben Crary (bcrary@limno.com)


###############################################################################
################ Load Analysis Variables ##################################
###############################################################################

## Load Libraries 
library(SWMPrStorm)
library(dplyr)

## Verify project output directories exist 
SWMPrStorm::initialize_project()

### set variables ###

vars <- "data/StormVariables.xlsx" 
storm_vars <- "data/StormTrackVariables.xlsx"
dat <- "data/cdmo" 

## Set primary reserve using 'Master' tab from variable inptus

input_Master <- openxlsx::read.xlsx(vars, sheet = "MASTER")
reserve <- input_Master[1,2]

stations <- sampling_stations %>%
  dplyr::filter(NERR.Site.ID == reserve)


