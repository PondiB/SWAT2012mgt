check.meta <- function(mgt_name, mgt_file, mgt_data){
  mgt_file %<>%
    strsplit(., "\\ |\\:|\\: ") %>%
    unlist(.) %>%
    list(LUSE = .[grep("Luse", .)+1],
         SOIL = .[grep("Soil", .)+1])

  mgt_data %<>%
    filter(., FICHIER == mgt_name) %>%
    select(., CHAMPS, DESCRIPT)

  if(mgt_file$LUSE != mgt_data$CHAMPS){
    stop(paste("Landuse of HRU",mgt_name,"differs from MGT input!"))
  }

  if(mgt_file$LUSE != mgt_data$CHAMPS){
    stop(paste("Soil of HRU",mgt_name,"differs from MGT input!"))
  }

}
