

get_path <- function(){
# Choose input files and txtIO folder -------------------------------------
pth <- list()
pth[["mgtfile"]] <- choose.files(default = "D:/Projects_R/SWAT2012mgt/MGT_Example.csv",
                            caption = "Select management input file" )
pth[["txtIO"]]   <- choose.dir(default = "D:/Projects_R/SWAT2012mgt/",
                          caption = "Set path to txtIO")
return(pth)
}



