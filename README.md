
<!-- README.md is generated from README.Rmd. Please edit that file -->

# ussie

<!-- badges: start -->

[![R-CMD-check](https://github.com/ijlyttle/ussie/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/ijlyttle/ussie/actions/workflows/R-CMD-check.yaml)
<!-- badges: end -->

The goal of ussie is to help you work with European Football League
data.

## Installation

You can install the development version of ussie from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("ijlyttle/ussie")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(ussie)
library(dplyr)
#> 
#> Attaching package: 'dplyr'
#> The following objects are masked from 'package:stats':
#> 
#>     filter, lag
#> The following objects are masked from 'package:base':
#> 
#>     intersect, setdiff, setequal, union

italy <- uss_make_matches(engsoccerdata::italy, "Italy")

glimpse(italy)
#> Rows: 25,404
#> Columns: 8
#> $ country       <chr> "Italy", "Italy", "Italy", "Italy", "Italy", "Italy", "I…
#> $ tier          <int> 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,…
#> $ season        <int> 1934, 1934, 1934, 1934, 1934, 1934, 1934, 1934, 1934, 19…
#> $ date          <date> 1934-09-30, 1934-09-30, 1934-09-30, 1934-09-30, 1934-09…
#> $ home          <chr> "Lazio Roma", "Torino FC", "Sampierdarenese", "SSC Napol…
#> $ visitor       <chr> "US Livorno", "Unione Triestina", "Bologna FC", "US Ales…
#> $ goals_home    <int> 6, 3, 2, 0, 4, 0, 3, 1, 1, 1, 2, 4, 2, 2, 3, 2, 2, 2, 0,…
#> $ goals_visitor <int> 1, 1, 1, 1, 1, 2, 0, 2, 1, 1, 1, 0, 2, 1, 1, 0, 1, 1, 1,…
```
