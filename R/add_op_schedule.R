add.op_schedule <- function(mgt_data_i, op_pos){
  op_sdl <- c()
  op_i <- which(!is.na(mgt_data_i[op_pos]))

    for (i in op_i){
    op_line <- line.init()
    mgt_segm <- mgt_data_i[op_pos[i]:(op_pos[i + 1] - 1)]
    op_select <- select(mgt_segm,starts_with("MGT_OP")) %>%
      as.character(mgt_segm)

    op_sdl <- c(op_sdl,
    switch(op_select,
           "1" = allocate.value(mgt_segm, op_line, c(1,2,4,5,7,8,9,10,11,12,13)),
           "3" = allocate.value(mgt_segm, op_line, c(1,2,4,5,8,9)),
           "5" = allocate.value(mgt_segm, op_line, c(1,2,4,8)),
           "6" = allocate.value(mgt_segm, op_line, c(1,2,4,5,8)),
           "7" = allocate.value(mgt_segm, op_line, c(1,2,4,6,8))) %>%
      mgt.format(.))
    }
  return(op_sdl)
}
