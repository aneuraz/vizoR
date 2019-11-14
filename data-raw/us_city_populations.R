## code to prepare `DATASET` dataset goes here

library(dplyr)

path = 'data-raw/city_populations/'

files <-list.files(path)

load_data_file <- function(path, f) {
  dt <- readr::read_csv(paste0(path, f),col_names = FALSE, skip = 1)
  dt[,1:5] %>%
    rename(Rank = X1,City = X2,State = X3,Population = X4,Region = X5) %>%
    mutate(Year = as.integer(stringr::str_sub(f, 1,4)))
}

us_city_populations <- lapply(files, load_data_file, path= path)
us_city_populations <- dplyr::bind_rows(us_city_populations)

usethis::use_data(us_city_populations)

