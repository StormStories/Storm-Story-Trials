# 02-05_Populate_Story_Template_Page_5.R
# Updated 4/13/2022
#
# Reads Storm Story Powerpoint template page 5 and populates the 
# placeholders with variables read in step 02-00. 
#
# Slide is added to story created in step 02-04. 
#
# Author: Ben Crary (bcrary@limno.com)



# Add fifth slide ----

story <- add_slide(story, layout = "Page Five", master = "Office Theme")

# Add elements to template ----

story <- story %>%
  ph_with(value = txt_wq_co_box , location = ph_location_label(ph_label = "txt_wq_co_box")) %>%
  ph_with(value = txt_wq_data_notes , location = ph_location_label(ph_label = "txt_wq_data_notes")) %>%
  ph_with(value = txt_wq_plot_ttl_1  , location = ph_location_label(ph_label = "txt_wq_plot_ttl_1")) %>%
  ph_with(value = txt_wq_plot_caption_1  , location = ph_location_label(ph_label = "txt_wq_plot_caption_1")) %>%
  ph_with(value = txt_wq_plot_ttl_2  , location = ph_location_label(ph_label = "txt_wq_plot_ttl_2")) %>%
  ph_with(value = txt_wq_plot_caption_2  , location = ph_location_label(ph_label = "txt_wq_plot_caption_2")) %>%
  ph_with(value = txt_wq_ecosystem  , location = ph_location_label(ph_label = "txt_wq_ecosystem")) %>%
  ph_with(value = txt_highlight_2 , location = ph_location_label(ph_label = "txt_highlight_2")) %>%
  ph_with(external_img(img_wq_plot_1), location = ph_location_label(ph_label = "img_wq_plot_1")) %>%
  ph_with(external_img(img_wq_plot_2), location = ph_location_label(ph_label = "img_wq_plot_2")) %>%
  ph_with(external_img(img_wq_ecosystem), location = ph_location_label(ph_label = "img_wq_ecosystem")) 

  
  
  
#file.remove("template_files/storm_report_raw.pptx")
#print(story, target = 'template_files/storm_report_raw.pptx')
  