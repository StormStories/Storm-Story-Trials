# 02-01_Populate_Story_Template_Page_1.R
# Updated 4/13/2022
#
# Reads Storm Story Powerpoint template page 1 and populates the 
# placeholders with variables read in step 02-00. 
#
# Author: Ben Crary (bcrary@limno.com)

# Initialize template and add first slide -------

template <- read_pptx('template_files/empty_template/Storm_Story_Template.pptx') 

story <- template %>%
  add_slide(layout = "Page One", master = "Office Theme") 

# Add elements to template ----

story <- story %>% 
  ph_with(external_img(img_storm), location = ph_location_label(ph_label = "img_storm")) %>%
  ph_with(external_img(page_one_db_box), location = ph_location_label(ph_label = "Rounded Rectangle 15")) %>%
  ph_with(external_img(page_one_db_box), location = ph_location_label(ph_label = "Rounded Rectangle 16")) %>%
  ph_with(external_img(page_one_db_box), location = ph_location_label(ph_label = "Rounded Rectangle 17")) %>%
  ph_with(external_img(page_one_db_box), location = ph_location_label(ph_label = "Rounded Rectangle 18")) %>%
  ph_with(external_img(page_one_banner), location = ph_location_label(ph_label = "Rectangle 6")) %>%
  ph_with(external_img(page_one_mid), location = ph_location_label(ph_label = "Rectangle 7")) %>%
  ph_with(value = txt_event_date, location = ph_location_label(ph_label = "txt_event_date")) %>%
  ph_with(value = txt_event_ttl, location = ph_location_label(ph_label = "txt_event_ttl")) %>%
  ph_with(value = txt_dash_v1, location = ph_location_label(ph_label = "txt_dash_v1")) %>%
  ph_with(value = txt_dash_v1_desc, location = ph_location_label(ph_label = "txt_dash_v1_desc")) %>%
  ph_with(value = txt_dash_v2, location = ph_location_label(ph_label = "txt_dash_v2")) %>%
  ph_with(value = txt_dash_v2_desc, location = ph_location_label(ph_label = "txt_dash_v2_desc")) %>%
  ph_with(value = txt_dash_v3, location = ph_location_label(ph_label = "txt_dash_v3")) %>%
  ph_with(value = txt_dash_v3_desc, location = ph_location_label(ph_label = "txt_dash_v3_desc")) %>%
  ph_with(value = txt_dash_v4, location = ph_location_label(ph_label = "txt_dash_v4")) %>%
  ph_with(value = txt_dash_v4_desc, location = ph_location_label(ph_label = "txt_dash_v4_desc")) %>%
  ph_with(value = txt_monitor_ttl, location = ph_location_label(ph_label = "txt_monitor_ttl")) %>%
  ph_with(value = txt_storm_bkgd, location = ph_location_label(ph_label = "txt_storm_bkgd")) %>%
  ph_with(value = txt_data_src, location = ph_location_label(ph_label = "txt_data_src")) %>%
  ph_with(value = txt_date_update, location = ph_location_label(ph_label = "txt_date_update")) %>%
  ph_with(external_img(img_resrv_logo), location = ph_location_label(ph_label = "img_resrv_logo")) 


#print(story1, target = 'template_files/storm_report_raw.pptx')



















