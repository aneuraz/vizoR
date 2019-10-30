#library(rvest)
#library(utils)

#' color-hex.com palette by number
#'
#' Retrieves a color palette from color-hex.com identified by its number as found in the url
#' of the palette page (e.g. in "https://www.color-hex.com/color-palette/5361", 5361 is the number).
#'
#' @param number palette number from color-hex.com
#'
#' @return vector of hexadecimal colors
#' @export
#'
#' @examples
#' color_hex_palette_from_number(5361)
color_hex_palette_from_number <- function(number) {

  h <- xml2::read_html(stringr::str_glue('https://www.color-hex.com/color-palette/{number}'))
  h <- rvest::html_node(h, ".table" )
  h <- rvest::html_table(h)
  dplyr::pull(h, Hex)
}

