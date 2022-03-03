
### Librería
library(tidyverse)
library(lubridate)
library(googlesheets4)


### Autorización de API
gs4_auth(scope = "https://www.googleapis.com/auth/drive")

# Importar sheet de google 
calendario <- googlesheets4::read_sheet("https://docs.google.com/spreadsheets/d/11nyQ5QwuTUaS6F_g8ZM6Ta9SXnrOiCtPV3h2rG_LVV0/edit#gid=0")


### Limpieza de base
calendario <- calendario %>% 
  rename(title    = titulo, 
         body     = descripcion,
         category = categoria) %>% 
  mutate(start = ymd(paste(anio, mes, dia, sep = "-")),
         end   = start,
         category = case_when(category == "fecha puntual" ~ "time")) %>% 
  select(title, body, category, start, end)
