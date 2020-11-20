
<!-- README.md is generated from README.Rmd. Please edit that file -->

# bioinform

<!-- badges: start -->

<!-- badges: end -->

The goal of bioinform, short for “Bioinformatics,” is to provide
functions that can be applied to biological and ecological datasets.

## Installation

You can install the released version of bioinform from
[CRAN](https://CRAN.R-project.org) with:

``` r
devtools::install_github("nb97/bioinform")
```

## Example and usage

This is a basic example which shows you how to solve a common problem:

``` r
library(devtools)
#> Loading required package: usethis
library(bioinform)

Cq_value <- function(x){
  Cq_avg <- (22.245) + ((-3.2048)*(x))
  return(Cq_avg)
}

Cq_value(6)
#> [1] 3.0162
```

# For inputting data

This is best applied to values pulled from excel or csv fiies.
Therefore, it could also be helpful to import data using:

``` r
#read.csv()
#readxl::read_xls()
```

\#NOTE: The purrr package is imported with this dataset to give ability
to read lists in addition to numeric vectors.

# Vignette

You can access more information about bioinform package through the
vignette. Use this command for istallation:

``` r
#install.packages("devtools")
#devtools::install_github("nb97/bioinform", build_vignettes = TRUE)
```

And to read the vignette:

``` r
library(bioinform)
browseVignettes("bioinform")
#> No vignettes found by browseVignettes("bioinform")
```

# Citation

``` r
citation("bioinform")
#> Warning in citation("bioinform"): no date field in DESCRIPTION file of package
#> 'bioinform'
#> Warning in citation("bioinform"): could not determine year for 'bioinform' from
#> package DESCRIPTION file
#> 
#> To cite package 'bioinform' in publications use:
#> 
#>   Natalie Benoit (NA). bioinform: TApplies functions to solve for
#>   numeric values of interest to biological and ecological datasets.. R
#>   package version 0.0.0.9000. https://github.com/nb97/bioinform
#> 
#> A BibTeX entry for LaTeX users is
#> 
#>   @Manual{,
#>     title = {bioinform: TApplies functions to solve for numeric values of interest to biological and ecological datasets.},
#>     author = {Natalie Benoit},
#>     note = {R package version 0.0.0.9000},
#>     url = {https://github.com/nb97/bioinform},
#>   }
```

## Code of Conduct

A code of conduct is included. It is a pledge that conributors agree
upon. Guidelines are layed out within the document.
