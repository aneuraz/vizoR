#' Show Palette
#'
#' Plots a color palette.
#'
#' @param pal character vector of hexadecimal colors
#'
#' @return plot of pal
#' @export
#'
#' @examples
#' pal <- color_hex_palette_from_number(5361)
#' show_pal(pal)
show_pal <- function(pal) {
  df <- data.frame(x = pal, y = 1)

  ggplot2::ggplot(df, ggplot2::aes(x = x, y = y, fill = x, color = x)) +
    ggplot2::geom_bar(stat = "identity") +
    ggplot2::scale_color_manual(values = pal) +
    ggplot2::scale_fill_manual(values = pal) +
    ggplot2::theme_void() +
    ggplot2::theme(legend.position = "none") +
    ggplot2::ggtitle(deparse(substitute(pal)))
}
