### Title:    Census App: Globals & App
### Author:   Eric Lamphere (ericjlamphere@gmail.com)
### Time:     2020-11-28 16:33:09

devtools::install_github("EricLamphere/lamps")
library(shiny); library(lamps)
library(censusapi)


# QUERY ####################################################################################################
# https://api.census.gov/data.html
# getCensus(
#
# )



shiny::runApp('census-app')
