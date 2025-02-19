#This will move your files from one folder to another
#Beware that this will erase files from your original folder
#If you want to avoid this maybe you should copy them (try replacing file.rename for file.copy using the same syntax to do that)

current_directory <- list.files(path = "your origin directory",
                               pattern = "your files extension (.csv, .txt, etc)",
                               full.names = TRUE)

future_directory <- sub("part of the directory path you want to change",
                       "what you want to change it for",
                       current_directory) #this will take your vector containing all original file paths (aka where your files
#are located currently) and create a new vector that contains the new path (aka where you want to move your files)
#for example, if I want to move some csv files from a folder named "To_Do" to another one named "Done" I would write:
#current_directory <- list.files(path = "C:/Users/To_Do", pattern = ".csv", full.names = TRUE)
#future_directory <- sub("To_Do", "Done", current_directory)

for (i in 1:length(current_directory)) {
  file.rename(from = current_directory[[i]],
             to = future_directory[[i]])
}
