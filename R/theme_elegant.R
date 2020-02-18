

#' Theme Elegant
#'
#' An elegant ggplot theme for modern visualizations
#' (Basically a copy of `see::theme_modern` but with slight tweeks)
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
#' library(ggplot2)
#' ggplot(iris, aes(x = Sepal.Width, y = Sepal.Length, color = Species)) +
#'  geom_point() +
#'  theme_elegant()
#'
theme_elegant <- function(base_size = 11,
                     base_family = "",
                     base_line_size = base_size / 22,
                     base_rect_size = base_size / 22) {

  half_line <- base_size/2

  theme_minimal(base_size = base_size,
                base_family = base_family,
                base_line_size = base_line_size,
                base_rect_size = base_rect_size) %+replace%
    theme(
      ## Panel grid ##
      panel.border = element_blank(),
      panel.grid.major = element_blank(),
      panel.grid.minor = element_blank(),
      ## Title ##
      plot.title = element_text(size = rel(1.3),
                                face = "plain", margin = margin(0, 0, 20, 0)),
      ## Axis ##
      axis.line = element_line(colour = "black", size = rel(0.5)),
      axis.title.y = element_text(margin = margin(t = 0, r = rel(20), b = 0, l = 0),
                                  angle = 90),
      axis.title.x = element_text(margin = margin(t = rel(20), r = 0, b = 0, l = 0)),
      axis.title = element_text(size = rel(1.2),
                                face = "plain"),
      axis.text = element_text(size = rel(.8)),
      axis.ticks = element_blank(),
      ## Legend ##
      legend.key = element_blank(),
      legend.position = "bottom",
      legend.text = element_text(size = rel(1.1)),
      legend.title = element_text(size = rel(1.1)),
      legend.spacing.x = unit(2, "pt"),
      ## Background ##
      strip.background = element_blank(),
      plot.tag = element_text(size = rel(1.3), face = "bold"),
      strip.text = element_text(face = "bold")
    )
}


#' Theme Elegant Dark
#'
#' An elegant dark ggplot theme for modern visualizations
#' (Basically a copy of `see::theme_blackboard` but with slight tweeks)
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
#' library(ggplot2)
#' ggplot(iris, aes(x = Sepal.Width, y = Sepal.Length, color = Species)) +
#'  geom_point() +
#'  theme_elegant_dark()
theme_elegant_dark <-function(base_size = 11,
                         base_family = "",
                         base_line_size = base_size / 22,
                         base_rect_size = base_size / 22) {

  dark_color = "grey10"
  light_color = "#E0E0E0"

  theme_elegant(base_size = base_size,
           base_family = base_family,
           base_line_size = base_line_size,
           base_rect_size = base_rect_size) %+replace%

    theme(
      ## Backgrounds ##
      plot.background = element_rect(fill = dark_color),
      panel.background = element_rect(fill = dark_color, color=dark_color),
      legend.background = element_rect(fill = dark_color, color=dark_color),
      ## Lines ##
      axis.line = element_line(color = light_color),
      ## Text ##
      text = element_text(family = base_family, face = "plain",
                          color = light_color, size = base_size,
                          hjust = 0.5, vjust = 0.5, angle = 0,
                          lineheight =0.9, margin = margin(),
                          debug = FALSE),
      axis.text = element_text(color = light_color)
    )
}
