install.packages("curl")
install.packages("httr")
install.packages("gargle")
install.packages("googledrive")
install.packages("googlesheets4")
install.packages("dplyr")
install.packages("rmarkdown")

library(dplyr)


googlesheets4::gs4_deauth()

calendario_drive <- googlesheets4::read_sheet("https://docs.google.com/spreadsheets/d/11nyQ5QwuTUaS6F_g8ZM6Ta9SXnrOiCtPV3h2rG_LVV0/edit#gid=0") %>% 
  filter(if_any(.cos = everything(), 
                .fns = ~ !is.na(.))) %>% 
  nrow()



calendario <- read.csv("https://raw.githubusercontent.com/dnme-minturdep/calendario_dnmye/main/.github/data/n_published.csv") %>% 
  pull()

if(calendario_drive > calendario){
  
  rmarkdown::render(input = "index.Rmd", output_yaml = "_site.yml")

  } else {
  
  print("No hay nuevas publicaciones")
  }

