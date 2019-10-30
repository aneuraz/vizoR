
<!-- README.md is generated from README.Rmd. Please edit that file -->

# vizoR

<!-- badges: start -->

<!-- badges: end -->

The goal of vizoR is to provide helper functions to help designing
better visualizations in R.

## Installation

This package is under active developpement. You can install it from
github:

``` r
devtools::install_github("aneuraz/vizoR")
```

## Example

Retrieving a color palette from color-hex.com (by number)

``` r
library(vizoR)

pal <- color_hex_palette_from_number(5361)
pal
#> [1] "#ffb3ba" "#ffdfba" "#ffffba" "#baffc9" "#bae1ff"
```

Plotting the palette

``` r

show_pal(pal)
```

<img src="man/figures/README-plot-1.png" width="100%" />
