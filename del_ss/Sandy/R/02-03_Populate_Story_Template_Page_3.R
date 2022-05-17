# 02-03_Populate_Story_Template_Page_3.R
# Updated 4/13/2022
#
# Reads Storm Story Powerpoint template page 3 and populates the 
# placeholders with variables read in step 02-00. 
#
# Slide is added to story created in step 02-02. 
#
# Author: Ben Crary (bcrary@limno.com)


# Add third slide ----

story <- add_slide(story, layout = "Page Three", master = "Office Theme")

# Add elements to template ----

story2 <- story %>%
  ph_with(value = txt_storm_track, location = ph_location_label(ph_label = "txt_storm_track")) %>%
  ph_with(value = txt_ei_human_health_safety, location = ph_location_label(ph_label = "txt_ei_human_health_safety")) %>%
  ph_with(value = txt_ei_economic_losses, location = ph_location_label(ph_label = "txt_ei_economic_losses")) %>%
  ph_with(value = txt_ei_ecosystem_impacts, location = ph_location_label(ph_label = "txt_ei_ecosystem_impacts")) %>%
  ph_with(value = txt_weather_data_notes, location = ph_location_label(ph_label = "txt_weather_data_notes")) %>%
  ph_with(value = txt_weather_co_box, location = ph_location_label(ph_label = "txt_weather_co_box")) %>%
  ph_with(external_img(img_storm_track), location = ph_location_label(ph_label = "img_storm_track"))



#file.remove("template_files/storm_report_raw.pptx")
#print(story, target = 'template_files/storm_report_raw.pptx')
