## code to prepare `base_pop` dataset goes here

library(dplyr)

regions <- readr::read_csv("data-raw/cog_ensemble_2019_csv/region2019.csv")
deps <- readr::read_csv("data-raw/cog_ensemble_2019_csv/departement2019.csv")
base_pop <- readxl::read_excel("data-raw/base-pop-historiques-1876-2015.xls",
                               sheet = "pop_1876_2015", skip = 4)

base_pop <- base_pop[-1,]

base_pop <- base_pop %>%
  tidyr::pivot_longer(starts_with('Pop'),names_to='annee', values_to='compte') %>%
  mutate(annee = as.integer(stringr::str_sub(annee, -4,-1)),
         population = as.integer(compte)) %>%
  rename(code_geo = `Code géographique`,
         region = `Région`,
         dep = `Département`,
         ville = `Libellé géographique`) %>%
  left_join(select(regions, reg, libelle), by=c('region' = 'reg')) %>%
  mutate(region = libelle) %>%
  select(-libelle, -compte) %>%
  left_join(select(deps, dep, libelle), by=c('dep')) %>%
  rename(dep_libelle = libelle)

usethis::use_data(base_pop, overwrite = TRUE)

