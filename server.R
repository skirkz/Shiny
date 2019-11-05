#
# This is the server logic of a Shiny web application. You can run the
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {

  output$distPlot <- renderPlot({

    # generate carbs based on input$carbs from ui.R
    x    <- mtcars$mpg
    z <- mtcars$carb

    carbs <- seq(min(z), max(z), length.out = input$carbs + 1)

    # draw the histogram with the specified number of carbs
    hist(z, breaks = carbs, col = 'darkgray', border = 'white')

  })

})
