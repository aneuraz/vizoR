library(dplyr)


minard_cities <- read.table("data-raw/minard/cities.txt",
                            header = TRUE, stringsAsFactors = FALSE)

minard_troops <- read.table("data-raw//minard/troops.txt",
                            header = TRUE, stringsAsFactors = FALSE)

minard_temps <- read.table("data-raw/minard/temps.txt",
                           header = TRUE, stringsAsFactors = FALSE) %>%
  mutate(date = lubridate::dmy(date))  # Convert string to actual date


usethis::use_data(minard_cities,overwrite = TRUE)
usethis::use_data(minard_troops,overwrite = TRUE)
usethis::use_data(minard_temps,overwrite = TRUE)
