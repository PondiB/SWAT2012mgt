replace.value <- function(mgt_line ,value, val_type){
  if (is.na(value)) value <- 0

  if (is.numeric(value)){
    if (val_type == "int") format <- "%16d"
    if (val_type == "flt") format <- "%16.3f"
    paste(sprintf(format, value),
          substr(mgt_line, 17, nchar(mgt_line)),
          sep = "")

  } else {
    mgt_line
  }
}
