library(shiny)
shinyUI(fluidPage(
  titlePanel("Old Faithful Eruption Wait Times"),
  sidebarLayout(
    sidebarPanel(
      p('This is a Shiny app that plots a histogram of wait times (in minutes) to the next Old Faithful geyser eruption from R\'s faithful dataset, with a configurable number of bins.'),
      p('Use the slider below to configure the number of bins to be used to plot the histogram.'),
      sliderInput("bins",
                  "Number of bins:",
                  min = 5,
                  max = 50,
                  value = 25)
      ),
    mainPanel(
      plotOutput("distPlot")
      )
    )
  ))