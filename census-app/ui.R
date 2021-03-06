### Title:    Census App: UI
### Author:   Eric Lamphere (ericjlamphere@gmail.com)
### Time:     2020-11-28 16:33:09


# Define UI for application that draws a histogram
shinyUI(fluidPage(

    # Application title
    titlePanel("2019 US Census"),

    # Sidebar with a slider input for number of bins
    sidebarLayout(
        sidebarPanel(
            sliderInput("bins",
                        "Number of bins:",
                        min = 1,
                        max = 50,
                        value = 30)
        ),

        # Show a plot of the generated distribution
        mainPanel(
            plotOutput("distPlot")
        )
    )
))
