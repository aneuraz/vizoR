# library(rvest)
# library(utils)

#' [color_hex.com]() palette by number
#'
#' Retrieves a color palette from [color_hex.com]() identified by its number as found in the url
#' of the palette page (e.g. in [https://www.color-hex.com/color-palette/5361](), 5361 is the number).
#'
#' @param number palette number from color-hex.com
#'
#' @return character vector of hexadecimal colors
#' @export
#'
#' @examples
#' color_hex_palette_from_number(5361)
color_hex_palette_from_number <- function(number) {
  h <- xml2::read_html(stringr::str_glue("https://www.color-hex.com/color-palette/{number}"))
  h <- rvest::html_node(h, ".table")
  h <- rvest::html_table(h)
  dplyr::pull(h, Hex)
}



#' [color_hex.com]() palette by name
#'
#' Retrieves a color palette from [color_hex.com]() identified by its name.
#'
#' @param name name of the palette
#'
#' @return character vector of hexadecimal colors
#' @export
#'
#' @examples
#' color_hex_palette_from_name("Cook")
#'
color_hex_palette_from_name <- function(name) {
  query <- utils::URLencode(name)
  h <- xml2::read_html(stringr::str_glue('https://www.color-hex.com/color-palettes/?keyword={query}'))
  url <- rvest::html_node(h, ".palettecontainerlist a")
  url <- rvest::html_attr(url, 'href')
  number <- stringr::str_extract(url, '[0-9]+$')
  color_hex_palette_from_number(number)
}
