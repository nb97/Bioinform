
<!-- README.md is generated from README.Rmd. Please edit that file -->

# bioinform

<!-- badges: start -->

<!-- badges: end -->

The goal of bioinform, short for “Bioinformatics,” is to provide
functions that can be applied to biological and ecological datasets.

## Installation

For basic installation, use the following code:

``` r
# install.packages("devtools")
devtools::install_github("nb97/bioinform")
#> Downloading GitHub repo nb97/bioinform@HEAD
#> rlang    (0.4.7 -> 0.4.9) [CRAN]
#> magrittr (1.5   -> 2.0.1) [CRAN]
#> Installing 2 packages: rlang, magrittr
#> 
#> The downloaded binary packages are in
#>  /var/folders/sn/mstm7k3n3kncj014h3ny57mc0000gn/T//RtmpQHhEzj/downloaded_packages
#>      checking for file ‘/private/var/folders/sn/mstm7k3n3kncj014h3ny57mc0000gn/T/RtmpQHhEzj/remotes95172cdfda9/nb97-bioinform-f2f3903/DESCRIPTION’ ...  ✓  checking for file ‘/private/var/folders/sn/mstm7k3n3kncj014h3ny57mc0000gn/T/RtmpQHhEzj/remotes95172cdfda9/nb97-bioinform-f2f3903/DESCRIPTION’ (988ms)
#>   ─  preparing ‘bioinform’:
#>      checking DESCRIPTION meta-information ...  ✓  checking DESCRIPTION meta-information
#>   ─  checking for LF line-endings in source and make files and shell scripts
#>   ─  checking for empty or unneeded directories
#>   ─  building ‘bioinform_0.0.0.9000.tar.gz’
#>      
#> 
```

## Example and usage

This is a basic example which shows you how to apply Bioinform when
running qPCR. The Cq average obtained is how many cycles that a sample
takes to amplify. The Cq average can be used to find the DNA
concentration.

``` r
library(devtools)
#> Loading required package: usethis
library(bioinform)

Cq_value <- function(x){
  Cq_avg <- ((x) -22.245)/(-3.45)
  return(Cq_avg)
}

Cq_value(30)
#> [1] -2.247826
```

# Tests

This test shows that the expected value (6.221) by manually solving for
Cq with x=5 would equal the same as usign Cq\_value function.

# Equation

To find the Cq one must solve for x in the following equation: x = (Cq -
22.245) / -3.4564

\-22.245 and -3.45 are derived from the average Cq on a standard curve.
These standards are at a serial dilution starting at 10ng/uL and
decreasing 10x with each standard. The second standard is diluted to
1ng/uL, the third to 0.1ng/uL, forth to 0.01ng/Ul, etc.

These standards were developed by targeting the CO1 gene is Chinook
Salmon (Oncorhynchus tshawytscha).

This equaiton is applicable to Natalie Benoit’s M.Sc. however it can be
maniupated and applied to similar studies with slight modification to
the equation.

# For inputting data

This is best applied to values pulled from excel or csv fiies.
Therefore, it could also be helpful to import data using:

``` r
#read.csv()
#readxl::read_xls()
```

NOTE: The purrr package is imported with this dataset to give ability to
read lists in addition to numeric vectors.

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
#> 
#> To cite package 'bioinform' in publications use:
#> 
#>   Natalie Benoit (2020). bioinform: Applies functions to solve for
#>   numeric values of interest to biological and ecological datasets.. R
#>   package version 0.0.0.9000. https://github.com/nb97/bioinform
#> 
#> A BibTeX entry for LaTeX users is
#> 
#>   @Manual{,
#>     title = {bioinform: Applies functions to solve for numeric values of interest to
#> biological and ecological datasets.},
#>     author = {Natalie Benoit},
#>     year = {2020},
#>     note = {R package version 0.0.0.9000},
#>     url = {https://github.com/nb97/bioinform},
#>   }
```

## Code of Conduct

A code of conduct is included. It is a pledge that conributors agree
upon. Guidelines are layed out within the document.
