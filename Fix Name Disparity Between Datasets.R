#This code will help you surpass the problems of naming/writting disparity between datasets from different sources

#For example, imagine you have some spp presences you obtained from the field and you downloaded some functional traits data
#to compare between species, but alas some spp are written differently in your df vs the one you downloaded from the internet

#You have two options: either you fix thousands of names manually and lose hours of your precious time or you could use this
#code and fix it in a few minutes... your choice...

correspondence <- data.frame(
  original_names = your_df$spp_names,
  suggested_names = sapply(your_df$spp_names, match, comparison = downloaded_df$spp_names)
) #This will create a new df with the suggested changes to your written names, you can check how it looks
#before changing anything

new_df <- your_df %>%
  left_join(correspondence, by = c("spp_names" = "original_names")) %>%
  mutate(spp_names = suggested_names) %>%
  select(-suggested_names)

#Now you have a new df that contains the same data as your original df but with the names fixed so that they match the ones
#from the downloaded df
