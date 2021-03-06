### Title:    Census App: Globals & App
### Author:   Eric Lamphere (ericjlamphere@gmail.com)
### Time:     2020-11-28 16:33:09

devtools::install_github("EricLamphere/lamps")
library(shiny); library(lamps)
library(censusapi)


# QUERY ####################################################################################################
### Census Data: https://api.census.gov/data.html
### Getting Started with Census API: https://cran.r-project.org/web/packages/censusapi/vignettes/getting-started.html
acs1.meta <- listCensusMetadata(
  name = "acs/acs1",vintage = 2019,
  type = "variables")

# need to remove the ':!!' from label to use as column names, want to export more functions from lamps first
sex_age_vars <- acs1.meta %>%
  filter(group == "B01001") %>%
  select(name, label) %>%
  mutate(newLabel = gsub("Estimate!!Total:!!", "", label) %remove% ":",
         newLabel = gsub("!!", " ", newLabel))


census.data <- getCensus(
  name = "acs/acs1",
  vintage = 2019,
  vars = sex_age_vars$name
)

census.data.l <- census.data %>%
  pivot_longer(all_of(sex_age_vars$name)) %>%
  left_join(sex_age_vars,
            by = c("name"))


shiny::runApp('census-app')
