cbp1 <- c("#999999", "#E69F00", "#56B4E9", "#009E73",
          "#F0E442", "#0072B2", "#D55E00", "#CC79A7")

cbp2 <- c("#000000", "#E69F00", "#56B4E9", "#009E73",
          "#F0E442", "#0072B2", "#D55E00", "#CC79A7")

#' A colorblind proof color palette
#'
#' @param black logical use the palette with grey or black color (default = FALSE)
#' @export
#' @examples
#' show_pal(cbp_pal(black = FALSE)(8))
#' show_pal(cbp_pal(black = TRUE)(8))
#'
cbp_pal <- function(black = FALSE) {
  if (black) {
    scales::manual_pal(cbp2)
  } else {
    scales::manual_pal(cbp1)
  }
}

#' Discrete colorblind proof color & fill scales
#'
#' See [cbp_pal]().
#'
#' @md
#' @inheritDotParams ggplot2::discrete_scale -expand -position
#' @param black logical use the palette with grey or black color (default = FALSE)
#' @rdname scale_cbp
#' @export
scale_colour_cbp <- function(black=FALSE,...) { discrete_scale("colour", "cbp", cbp_pal(black), ...) }

#' @export
#' @rdname scale_cbp
scale_color_cbp <- scale_colour_cbp

#' @export
#' @rdname scale_cbp
scale_fill_cbpm <- function(black=FALSE,...) { discrete_scale("fill", "cbp", cbp_pal(black), ...) }
