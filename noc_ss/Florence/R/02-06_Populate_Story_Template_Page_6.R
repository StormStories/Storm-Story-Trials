# 02-06_Populate_Story_Template_Page_6.R
# Updated 4/13/2022
#
# Reads Storm Story Powerpoint template page 6 and populates the 
# placeholders with variables read in step 02-00. 
#
# Slide is added to story created in step 02-05. 
#
# Author: Ben Crary (bcrary@limno.com)


# Add sixth slide ----

story <- add_slide(story, layout = "Page Six", master = "Office Theme")

# Add elements to template ----

story <- story %>%
  ph_with(value = txt_contact , location = ph_location_label(ph_label = "txt_contact")) %>%
  ph_with(value = txt_nerr_data , location = ph_location_label(ph_label = "txt_nerr_data")) %>%
  ph_with(value = txt_explore  , location = ph_location_label(ph_label = "txt_explore")) %>%
  ph_with(value = txt_social_handle  , location = ph_location_label(ph_label = "txt_social_handle")) %>%
  ph_with(external_img(img_nerr_1), location = ph_location_label(ph_label = "img_nerr_1")) %>%
  ph_with(external_img(img_nerr_2), location = ph_location_label(ph_label = "img_nerr_2")) %>%
  ph_with(external_img(img_nerr_3), location = ph_location_label(ph_label = "img_nerr_3")) %>%
  ph_with(external_img(img_nerr_4), location = ph_location_label(ph_label = "img_nerr_4"))


