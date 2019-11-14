grippe = readr::read_csv("data-raw/incidence-RDD-3.csv",skip = 1)

grippe = dplyr::select(grippe, -indicator)

usethis::use_data(grippe)
