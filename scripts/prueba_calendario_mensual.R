
### Instalo paquetes
# install.packages("toastui")

### Cargo librerías
library(tidyverse)
library(toastui)

# Tabla con las fechas
agenda <- data.frame(
  title = c("Base microdatos EVyTH",
            "Informe ETI"),
  start = format(Sys.Date(), c("%Y-%m-03 00:00:00", "%Y-%m-04 00:00:00")),
  end = format(Sys.Date(), c("%Y-%m-03 00:00:00", "%Y-%m-04 00:00:00"))
)


calendar(view = "month", defaultDate = FALSE,
         navigation = TRUE, 
         navOpts = navigation_options(
           today_label = "Hoy",
           # prev_label = icon("chevron-left"),
           # next_label = icon("chevron-right"),
           class = "bttn-bordered bttn-sm bttn-primary",
           bg = NULL,
           color = NULL,
           fmt_date = "YYYY-MM-DD",
           sep_date = " ~ "
         )
         ) %>%
  cal_schedules(
    title = "Microdatos EVyTH",
    body = "4to Trimestre de 2022",
    start = format(Sys.Date(), "%Y-%m-03 08:00:00"),
    end = format(Sys.Date(), "%Y-%m-03 12:00:00"),
    category = "time"
  ) %>%
  cal_schedules(
    title = "Informe ETI",
    body = "Enero de 2022",
    start = format(Sys.Date(), "%Y-%m-05 08:00:00"),
    end = format(Sys.Date(), "%Y-%m-05 12:00:00"),
    category = "time"
  ) %>%
  cal_schedules(
    title = "Informe EOH",
    body = "Enero de 2022",
    start = format(Sys.Date(), "%Y-%m-12"),
    end = format(Sys.Date(), "%Y-%m-12"),
    category = "allday"
  ) %>%
  cal_schedules(
    title = "Informe EVyTH",
    body = "4to trimestre de 2022",
    start = format(Sys.Date(), "%Y-%m-15 12:00:00"),
    end = format(Sys.Date(), "%Y-%m-15 14:00:00"),
    category = "time"
  )



?calendar()

calendario_prueba <- cal_demo_data("month")
