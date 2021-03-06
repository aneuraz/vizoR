% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/colour_lovers_palette_from_number.R
\name{colour_lovers_palette_from_number}
\alias{colour_lovers_palette_from_number}
\title{[colourlovers.com](http://colourlovers.com) palette by number}
\usage{
colour_lovers_palette_from_number(number)
}
\arguments{
\item{number}{palette number from [colourlovers.com](http://colourlovers.com)}
}
\value{
character vector of hexadecimal colors
}
\description{
Retrieves a color palette from  [colourlovers.com](http://colourlovers.com) identified by its number as found in the url
of the palette page (e.g. in ['https://www.colourlovers.com/palette/292482/Terra'](), 292482 is the number (or 292482/Terra )).
}
\examples{
colour_lovers_palette_from_number("292482/Terra")
}
