# 02-04_Populate_Story_Template_Page_4.R
# Updated 4/13/2022
#
# Reads Storm Story Powerpoint template page 4 and populates the 
# placeholders with variables read in step 02-00. 
#
# Slide is added to story created in step 02-03. 
#
# Author: Ben Crary (bcrary@limno.com)



# Add fourth slide ----

story <- add_slide(story, layout = "Page Four", master = "Office Theme")

# Add elements to template ----

story <- story %>%
  ph_with(value = txt_met_plot_ttl_1 , location = ph_location_label(ph_label = "txt_met_plot_ttl_1")) %>%
  ph_with(value = txt_met_plot_caption_1 , location = ph_location_label(ph_label = "txt_met_plot_caption_1")) %>%
  ph_with(value = txt_met_plot_ttl_2 , location = ph_location_label(ph_label = "txt_met_plot_ttl_2")) %>%
  ph_with(value = txt_met_plot_caption_2 , location = ph_location_label(ph_label = "txt_met_plot_caption_2")) %>%
  ph_with(value = txt_met_storm_desc, location = ph_location_label(ph_label = "txt_met_storm_desc")) %>%
  ph_with(external_img(img_met_plot_1), location = ph_location_label(ph_label = "img_met_plot_1")) %>%
  ph_with(external_img(img_met_plot_2), location = ph_location_label(ph_label = "img_met_plot_2")) %>%
  ph_with(external_img(img_storm_1), location = ph_location_label(ph_label = "img_storm_1")) %>%
  ph_with(external_img(img_storm_2), location = ph_location_label(ph_label = "img_storm_2")) %>%
  ph_with(value = txt_highlight_1, location = ph_location_label(ph_label = "txt_highlight_1")) 



#file.remove("template_files/storm_report_raw.pptx")
#print(story, target = 'template_files/storm_report_raw.pptx')
