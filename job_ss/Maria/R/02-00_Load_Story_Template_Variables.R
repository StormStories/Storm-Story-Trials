# Load_Story_Template_Variables.R
# Updated 4/13/2022
#
# Reads populated storm story template excel file and stores them as 
# variables. 
#
# Author: Ben Crary (bcrary@limno.com)


###############################################################################
################ Load Template Variables ##################################
###############################################################################

## Load Libraries 
library(SWMPrStorm)
library(dplyr)

# Load text variables
wb_name <- 'template_files/text/Storm_Story_Template_Text_Entry.xlsx'

pg1 <- readxl::read_xlsx(wb_name, sheet = 1)
pg2 <- readxl::read_xlsx(wb_name, sheet = 2)
pg3 <- readxl::read_xlsx(wb_name, sheet = 3)
pg4 <- readxl::read_xlsx(wb_name, sheet = 4)
pg5 <- readxl::read_xlsx(wb_name, sheet = 5)
pg6 <- readxl::read_xlsx(wb_name, sheet = 6)

# PAGE ONE VARIABLES -----
# Images
img_storm <- pg1 %>% filter(Variable_Name == 'img_storm') %>% .$File_Name %>% paste('template_files/images/', ., sep = '')
img_resrv_logo <- pg1 %>% filter(Variable_Name == 'img_resrv_logo') %>% .$File_Name %>% paste('template_files/images/', ., sep = '')


# Text for event details
txt_event_date <- pg1 %>% filter(Variable_Name == 'txt_event_date') %>%  .$Text
txt_event_ttl <- pg1 %>% filter(Variable_Name == 'txt_event_ttl') %>%  .$Text

# Text for dashboard
txt_dash_v1 <- pg1 %>% filter(Variable_Name == 'txt_dash_v1') %>%  .$Text
txt_dash_v1_desc <- pg1 %>% filter(Variable_Name == 'txt_dash_v1_desc') %>%  .$Text
txt_dash_v2 <- pg1 %>% filter(Variable_Name == 'txt_dash_v2') %>%  .$Text
txt_dash_v2_desc <- pg1 %>% filter(Variable_Name == 'txt_dash_v2_desc') %>%  .$Text
txt_dash_v3 <- pg1 %>% filter(Variable_Name == 'txt_dash_v3') %>%  .$Text
txt_dash_v3_desc <- pg1 %>% filter(Variable_Name == 'txt_dash_v3_desc') %>%  .$Text
txt_dash_v4 <- pg1 %>% filter(Variable_Name == 'txt_dash_v4') %>%  .$Text
txt_dash_v4_desc <- pg1 %>% filter(Variable_Name == 'txt_dash_v4_desc') %>%  .$Text


# Text for event description
txt_monitor_ttl <- pg1 %>% filter(Variable_Name == 'txt_monitor_ttl') %>%  .$Text
txt_storm_bkgd <- pg1 %>% filter(Variable_Name == 'txt_storm_bkgd') %>%  .$Text

# Text for data details
txt_data_src <- pg1 %>% filter(Variable_Name == 'txt_data_src') %>%  .$Text
txt_date_update <- pg1 %>% filter(Variable_Name == 'txt_date_update') %>%  .$Text

# Static Template Features
page_one_banner <- 'template_files/images/PageOneBanner.png'
page_one_mid <- 'template_files/images/PageOneMid.png'
page_one_db_box <- 'template_files/images/RoundedRectangle.png'



# PAGE TWO VARIABLES -----

# Plots and Maps
img_resrv_map <- pg2 %>% filter(Variable_Name == 'img_resrv_map') %>% .$File_Name 

# Text for event details
txt_resrv_abbrev <- pg2 %>% filter(Variable_Name == 'txt_resrv_abbrev') %>%  .$Text
txt_resrv_nerrs_desc <- pg2 %>% filter(Variable_Name == 'txt_resrv_nerrs_desc') %>%  .$Text
txt_storm_mon_ttl <- pg2 %>% filter(Variable_Name == 'txt_storm_mon_ttl') %>%  .$Text
txt_resrv_stations_data_desc <- pg2 %>% filter(Variable_Name == 'txt_resrv_stations_data_desc') %>%  .$Text



# PAGE THREE VARIABLES -----

# Images
img_storm_track <- pg3 %>% filter(Variable_Name == 'img_storm_track') %>% .$File_Name %>% paste('template_files/images/', ., sep = '')

# Text for Storm Track
txt_storm_track <- pg3 %>% filter(Variable_Name == 'txt_storm_track') %>%  .$Text


# Text for Economic Impacts
txt_ei_human_health_safety <- pg3 %>% filter(Variable_Name == 'txt_ei_human_health_safety') %>%  .$Text
txt_ei_economic_losses <- pg3 %>% filter(Variable_Name == 'txt_ei_economic_losses') %>%  .$Text
txt_ei_ecosystem_impacts <- pg3 %>% filter(Variable_Name == 'txt_ei_ecosystem_impacts') %>%  .$Text

# Text for Weather
txt_weather_co_box <- pg3 %>% filter(Variable_Name == 'txt_weather_co_box') %>%  .$Text
txt_weather_data_notes <- pg3 %>% filter(Variable_Name == 'txt_weather_data_notes') %>%  .$Text
txt_met_data_notes <- pg3 %>% filter(Variable_Name == 'txt_met_data_notes') %>%  .$Text


# PAGE FOUR VARIABLES -----

# Images
img_met_plot_1 <- pg4 %>% filter(Variable_Name == 'img_met_plot_1') %>% .$File_Name
img_met_plot_2 <- pg4 %>% filter(Variable_Name == 'img_met_plot_2') %>% .$File_Name 
img_storm_1 <- pg4 %>% filter(Variable_Name == 'img_storm_1') %>% .$File_Name %>% paste('template_files/images/', ., sep = '')
img_storm_2 <- pg4 %>% filter(Variable_Name == 'img_storm_2') %>% .$File_Name %>% paste('template_files/images/', ., sep = '')

# Text for Met Plots
txt_met_plot_ttl_1 <- pg4 %>% filter(Variable_Name == 'txt_met_plot_ttl_1') %>%  .$Text
txt_met_plot_ttl_2 <- pg4 %>% filter(Variable_Name == 'txt_met_plot_ttl_2') %>%  .$Text
txt_met_plot_caption_1 <- pg4 %>% filter(Variable_Name == 'txt_met_plot_caption_1') %>%  .$Text
txt_met_plot_caption_2 <- pg4 %>% filter(Variable_Name == 'txt_met_plot_caption_2') %>%  .$Text

# Text for Highlights
txt_highlight_1 <- pg4 %>% filter(Variable_Name == 'txt_highlight_1') %>%  .$Text
txt_met_storm_desc <- pg4 %>% filter(Variable_Name == 'txt_met_storm_desc') %>%  .$Text


# PAGE FIVE VARIABLES -----

# Images
img_wq_plot_1 <- pg5 %>% filter(Variable_Name == 'img_wq_plot_1') %>% .$File_Name 
img_wq_plot_2 <- pg5 %>% filter(Variable_Name == 'img_wq_plot_2') %>% .$File_Name 
img_wq_ecosystem <- pg5 %>% filter(Variable_Name == 'img_wq_ecosystem') %>% .$File_Name %>% paste('template_files/images/', ., sep = '')

# Text for WQ Plots
txt_wq_plot_ttl_1  <- pg5 %>% filter(Variable_Name == 'txt_wq_plot_ttl_1') %>%  .$Text
txt_wq_plot_caption_1  <- pg5 %>% filter(Variable_Name == 'txt_wq_plot_caption_1') %>%  .$Text
txt_wq_plot_ttl_2  <- pg5 %>% filter(Variable_Name == 'txt_wq_plot_ttl_2') %>%  .$Text
txt_wq_plot_caption_2 <- pg5 %>% filter(Variable_Name == 'txt_wq_plot_caption_2') %>%  .$Text

# Text for Graphics
txt_wq_ecosystem <- pg5 %>% filter(Variable_Name == 'txt_wq_ecosystem') %>%  .$Text
txt_highlight_2 <- pg5 %>% filter(Variable_Name == 'txt_highlight_2') %>%  .$Text

# Text for Data Table
txt_wq_co_box <- pg5 %>% filter(Variable_Name == 'txt_wq_co_box') %>%  .$Text
txt_wq_data_notes <- pg5 %>% filter(Variable_Name == 'txt_wq_data_notes') %>%  .$Text


# PAGE SIX VARIABLES -----

# Images
img_nerr_1 <- pg6 %>% filter(Variable_Name == 'img_nerr_1') %>% .$File_Name %>% paste('template_files/images/', ., sep = '')
img_nerr_2 <- pg6 %>% filter(Variable_Name == 'img_nerr_2') %>% .$File_Name %>% paste('template_files/images/', ., sep = '')
img_nerr_3 <- pg6 %>% filter(Variable_Name == 'img_nerr_3') %>% .$File_Name %>% paste('template_files/images/', ., sep = '')
img_nerr_4 <- pg6 %>% filter(Variable_Name == 'img_nerr_4') %>% .$File_Name %>% paste('template_files/images/', ., sep = '')


# Text
txt_contact  <- pg6 %>% filter(Variable_Name == 'txt_contact') %>%  .$Text
txt_nerr_data  <- pg6 %>% filter(Variable_Name == 'txt_nerr_data') %>%  .$Text
txt_explore  <- pg6 %>% filter(Variable_Name == 'txt_explore') %>%  .$Text
txt_social_handle <- pg6 %>% filter(Variable_Name == 'txt_social_handle') %>%  .$Text







