# Read mgt input file -----------------------------------------------------
read.mgt <- function(pth){
read.table(pth, header = TRUE, sep =",", dec = ".",
           stringsAsFactors = FALSE) %>%
  mutate(., FICHIER = sprintf("%08d", FICHIER))
}
