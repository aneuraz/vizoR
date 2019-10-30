
#' [colourlovers.com]() palette by number
#'
#' Retrieves a color palette from  [colourlovers.com]() identified by its number as found in the url
#' of the palette page (e.g. in ['https://www.colourlovers.com/palette/292482/Terra'](), 292482 is the number (or 292482/Terra )).
#'
#' @param number palette number from [colourlovers.com]()
#'
#' @return character vector of hexadecimal colors
#' @export
#'
#' @examples
#' colour_lovers_palette_from_number("292482/Terra")
colour_lovers_palette_from_number <- function(number) {
  h <- xml2::read_html(stringr::str_glue('https://www.colourlovers.com/palette/{number}'))
  hex <- rvest::html_nodes(h, '.block')
  hex <- rvest::html_attr(hex, 'style')
  hex <- stringr::str_match(hex, "(#[A-Z0-9]+);$")
  hex[-1,2]
}
