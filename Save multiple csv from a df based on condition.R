#We create a list based on a large dataframe in which each element is a part of said dataframe that has a specific value for a given column
df_list <- split(large_df, large_df$column_name)

#This will create multiple csv files in your current directory each of them being named after a specific value in the original column you selected
for (i in names(df_list)) {
  write.csv(df_list[[i]], paste0(i,".csv"))
}
