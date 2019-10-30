#' Theme Minimal for grid display
#'
#' A theme compatible with grid display (using Patchwork)
#'
#' @param base_size base_size
#' @param base_family base_family
#' @param base_line_size base_line_size
#' @param base_rect_size base_rect_size
#'
#' @return ggplot2 theme
#' @export
#'
#' @examples
#'
#'
theme_minimal_grid <- function(base_size = 11,
                               base_family = "",
                               base_line_size = base_size / 22,
                               base_rect_size = base_size / 22) {

  half_line <- base_size / 2

  theme_minimal(base_size = base_size,
                base_family = base_family,
                base_line_size = base_line_size,
                base_rect_size = base_rect_size) %+replace%
    theme(
      plot.margin = margin(half_line/2, 1.5, half_line/2, 1.5),
      complete = TRUE
    )
}


#' Theme completely void (no legend)
#'
#' Theme completely void (no legend)
#'
#' @param base_size base_size
#' @param base_family base_family
#' @param base_line_size base_line_size
#' @param base_rect_size base_rect_size
#'
#' @return
#' @export
#'
#' @examples
theme_void_complete <- function(base_size = 11,
                          base_family = "",
                          base_line_size = base_size / 170,
                          base_rect_size = base_size / 170) {

  theme_void(base_size = base_size,
             base_family = base_family,
             base_line_size = base_line_size) %+replace%
    theme( legend.position = "none",
           plot.title = element_text(hjust = 0.5)
    )
}
