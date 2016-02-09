overwrite.mgt <- function(mgt_data, txtIO_pth){
  mgt_list <- get.filenames("mgt",txtIO_pth)

  for (i_mgt in mgt_list){
    mgt_i <- readLines(txtIO_pth%/%i_mgt%.%"mgt", warn = FALSE)
    check.meta(i_mgt, mgt_i, mgt_data)


  }
}
