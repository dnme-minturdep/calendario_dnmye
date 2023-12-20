library(dplyr)

googlesheets4::gs4_deauth()

path <- Sys.getenv("CALENDAR_PATH")

calendario_drive <- googlesheets4::read_sheet(path) %>% 
  filter(if_any(.cos = everything(), 
                .fns = ~ !is.na(.))) %>% 
  nrow()



calendario <- read.csv("https://raw.githubusercontent.com/dnme-minturdep/calendario_dnmye/main/.github/data/n_published.csv") %>% 
  pull()

if(calendario_drive != calendario){
  
  rmarkdown::render(input = "index.Rmd", output_dir = "docs" , output_yaml = "_site.yml")

  } else {
  
  print("No hay nuevas publicaciones")
  }

