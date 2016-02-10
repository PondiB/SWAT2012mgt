allocate.value <- function(val_in, val_tgt, pos_tgt){
  val_tgt[pos_tgt] <- val_in
  return(val_tgt)
}
