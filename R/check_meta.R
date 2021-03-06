check.meta <- function(mgt_name, mgt_file, mgt_data_i){
  mgt_file %<>%
    .[1] %>%
    strsplit(., "\\ |\\:|\\: ") %>%
    unlist(.) %>%
    list(LUSE = .[grep("Luse", .)+1],
         SOIL = .[grep("Soil", .)+1])

  mgt_data_i %<>%
    select(., CHAMPS, DESCRIPT)

  if(mgt_file$LUSE != mgt_data_i$CHAMPS){
    stop(paste("Landuse of HRU",mgt_name,"differs from MGT input!"))
  }

  if(tolower(mgt_file$SOIL) != tolower(mgt_data_i$DESCRIPT)){
    stop(paste("Soil of HRU",mgt_name,"differs from MGT input!"))
  }

}
