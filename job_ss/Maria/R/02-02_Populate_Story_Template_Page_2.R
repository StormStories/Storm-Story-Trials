# 02-02_Populate_Story_Template_Page_2.R
# Updated 4/13/2022
#
# Reads Storm Story Powerpoint template page 2 and populates the 
# placeholders with variables read in step 02-00. 
#
# Slide is added to story created in step 02-01. 
#
# Author: Ben Crary (bcrary@limno.com)



# Add second slide ----

story <- add_slide(story, layout = "Page Two", master = "Office Theme")

# Add elements to template ----

story <- story %>% 
  ph_with(value = txt_resrv_abbrev, location = ph_location_label(ph_label = "txt_resrv_abbrev")) %>%
  ph_with(value = txt_resrv_nerrs_desc, location = ph_location_label(ph_label = "txt_resrv_nerrs_desc")) %>%
  ph_with(value = txt_storm_mon_ttl, location = ph_location_label(ph_label = "txt_storm_mon_ttl")) %>%
  ph_with(value = txt_resrv_stations_data_desc, location = ph_location_label(ph_label = "txt_resrv_stations_data_desc")) %>%
  ph_with(external_img(img_resrv_map), location = ph_location_label(ph_label = "img_resrv_map"))
  
  

#file.remove("template_files/storm_report_raw.pptx")
#print(story2, target = 'template_files/storm_report_raw.pptx')
  
  


