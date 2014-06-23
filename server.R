library(shiny)
shinyServer(function(input, output) {
  output$distPlot <- renderPlot({
    x <- faithful[, 2]
    bins <- seq(min(x), max(x), length.out = input$bins + 1)
    hist(x, breaks = bins, col = "blue", border = "blue4", main = "Wait Times Histogram", xlab = "Minutes to next eruption")
  })
})