overwrite.mgt <- function(mgt_data, txtIO_pth){
  mgt_list <- get.filenames("mgt",txtIO_pth)

  op_pos   <- grep("MONTH", colnames(mgt_data))
  type_lbl <- c("int","skp",rep("int",2), rep("flt",10), rep("int", 5),
                rep("flt",8), "int")

  for (i_mgt in mgt_list){
    mgt_i <- readLines(txtIO_pth%/%i_mgt%.%"mgt", warn = FALSE)
    mgt_data_i <- filter(mgt_data, FICHIER == i_mgt)
    check.meta(i_mgt, mgt_i, mgt_data_i)
    mgt_i[2:29] <- mapply(replace.value, mgt_i[2:29],
                                         mgt_data_i[,4:31],
                                         type_lbl)
    mgt_i <- c(mgt_i[1:30],add.op_schedule(mgt_data_i, op_pos))
    writeLines(mgt_i, con = txtIO_pth%/%i_mgt%.%"mgt")
  }
}
