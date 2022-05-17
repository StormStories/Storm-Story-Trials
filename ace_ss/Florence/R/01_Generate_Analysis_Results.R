# 01_Generate_Analysis_Results.R
# updated 4/13/2022
#
# Cycle through base SWMPrStorm Analyses
#
# Output from analyses are saved in output/
#
# Author: Ben Crary (bcrary@limno.com)

###############################################################################
################ Perform SWMPrStorm Analyses ##################################
###############################################################################

## Load Libraries 
library(SWMPrStorm)
library(dplyr)


### Run step 01-00: load analysis variables 
source('R/01-00_Load_Analysis_Variables.R')

### Event Time Series ###
SWMPrStorm::event_timeseries(vars, dat)

### Hourly Time Series ###
SWMPrStorm::event_timeseries_hourly(vars, dat)

### Event Time Series Dual ###
SWMPrStorm::event_timeseries_dual(vars, dat)

### Precip bar plot ###
SWMPrStorm::event_timeseries_precip(vars, dat)

### storm track map ###
SWMPrStorm::multi_storm_track(storm_vars)

### single storm track map ###
SWMPrStorm::single_storm_track(storm_vars)

### reserve map ###
stations <- sampling_stations[(sampling_stations$NERR.Site.ID == reserve
                               & sampling_stations$Status == 'Active'), ]$Station.Code

input_Parameters <- openxlsx::read.xlsx(vars, sheet = "reserve_map")
path_to_shp <- input_Parameters[1,2]

sf::sf_use_s2(FALSE)
res_spatial <- sf::st_read(path_to_shp) %>%
  sf::st_transform("+proj=longlat +datum=WGS84") %>%
  sf::st_union() %>%
  sf::st_sf() 

to_match <- c('wq', 'met')
stns <- stations[grep(paste(to_match, collapse = '|'), stations)]
shp_fl <- res_spatial
bounding <- as.vector(sf::st_bbox(res_spatial))
print_lab_dir_stn_order(reserve)
lab_dir <- unlist(strsplit(input_Parameters[2,2],", "))
labs <- substr(stns, 4,5)
pos <- 'bottomleft'

m <- SWMPrStorm::res_local_map(reserve, stations = stns, bbox = bounding, lab_loc = lab_dir, scale_pos = pos, shp = shp_fl)  

res_map_ttl <- paste('output/maps/', reserve, '_reserve_map.png', sep = '')

htmlwidgets::saveWidget(m, file = paste0('output/maps/m.html'))
webshot::webshot(url = paste0('output/maps/m.html'), file = res_map_ttl, vwidth = 250, vheight = 250) 


### wind rose ###
SWMPrStorm::event_windrose(vars, dat)

### rate of change ###
SWMPrStorm::event_roc(vars, dat)

### ridgelines ###
SWMPrStorm::event_ridgeline(vars, dat)

## multi event/location statistics table ###
SWMPrStorm::summary_data_table(vars, dat)

## daily time series table ###
SWMPrStorm::daily_data_table(vars, dat)



