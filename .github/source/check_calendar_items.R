library(tidyverse)

googlesheets4::gs4_deauth()

path <- Sys.getenv("CALENDAR_PATH")

calendario_drive <- googlesheets4::read_sheet(path) %>% 
  filter(if_any(.cos = everything(), 
                .fns = ~ !is.na(.))) %>% 
  mutate(across(everything(), as.character))



calendario <- read.csv("https://raw.githubusercontent.com/dnme-minturdep/calendario_dnmye/main/.github/data/calendario_publicado.csv") %>% 
  mutate(across(everything(), as.character))

if(all_equal(calendario, calendario_drive) == F){
  
  rmarkdown::render(input = "index.Rmd", output_dir = "docs" , output_yaml = "_site.yml")

  } else {
  
  print("No hay nuevas publicaciones")
  }

