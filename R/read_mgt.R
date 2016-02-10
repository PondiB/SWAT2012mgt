# Read mgt input file -----------------------------------------------------
read.mgt <- function(pth){
data <- read.table(pth, header = TRUE, sep =",", dec = ".",
           stringsAsFactors = FALSE) %>%
  mutate(., FICHIER = sprintf("%09d", FICHIER))
}
