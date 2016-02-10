#' write.SWATmgt
#'
#' \code{write.SWATmgt} reads the management operations from the selected csv
#' file and writes them to the management files in the selected txtInOut folder.
#'
#'
#' @return
#' @export

write.SWATmgt <- function(){
  pth <- get_path()
  mgt_data <- read.mgt(pth$mgtfile)
  overwrite.mgt(mgt_data,pth$txtIO)
}
