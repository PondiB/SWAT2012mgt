## file.names(pat_str) ----------------------------------------------------
## Function lists all the names of files in the TxtIO directory with a specific
## string pattern. It removes all output files from the list.
get.filenames <- function(file_ext, txtIO_pth) {
  file_list <- list.files(path = txtIO_pth,
                          pattern = paste("\\.", file_ext,"$", sep = ""))
  drop_el  <- grepl("output", file_list)
  file_list <- file_list[!drop_el]
  file_list <- substr(file_list, 1, 9)
}
