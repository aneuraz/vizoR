library(rvest)
library(utils)

color_hex_palette_from_number <- function(number) {
  h <- xml2::read_html(stringr::str_glue('https://www.color-hex.com/color-palette/{number}'))
  h %>% rvest::html_node(".table" ) %>%
    rvest::html_table() %>%
    dplyr::pull(Hex)
}
