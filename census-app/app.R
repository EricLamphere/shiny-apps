### Title:    Census App: Globals & App
### Author:   Eric Lamphere (ericjlamphere@gmail.com)
### Time:     2020-11-28 16:33:09

devtools::install_github("EricLamphere/lamps")
library(shiny); library(lamps)
library(censusapi)


# QUERY ####################################################################################################
### Census Data: https://api.census.gov/data.html
### Getting Started with Census API: https://cran.r-project.org/web/packages/censusapi/vignettes/getting-started.html
# getCensus(
#
# )



shiny::runApp('census-app')
