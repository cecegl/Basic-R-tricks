#This code will help you copy files into a folder when you have multiple origin directories

#This will create a list of directory paths to all the subfolders in your main directory
dir_path <- list.dirs(path = "path to main repository (with multiple folders)",
                      recursive = FALSE)

#This will search all your subfolders one by one for files of the type you select and then copy each of them to the
#desired destination
for (i in 1:length(dir_path)) {
  
  files_path <- list.files(path = dir_path[[i]], pattern = "type of file you want to move (.csv, .txt, .tif, etc)",
                              full.names = TRUE)
  
  file.copy(from = files_path[1],
            to = "destination directory")
}
