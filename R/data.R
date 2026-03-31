remotes::install_github("https://github.com/clarajegousse/fishR/fishr")
library(fishR)
library(dplyr)

data_dir <- download_fao_capture()
data     <- load_fao_capture(path = data_dir)
data     <- clean_country_names(data)

tuna_pacific <- data |>
  filter(
    Sp_Name_En %in% tuna_species,
    Ocean_Group_En == "Pacific Ocean"
  )

kir <- tuna_pacific |>
  filter(Country_Name_En == "Kiribati")

latest_year <- max(kir$PERIOD, na.rm = TRUE)