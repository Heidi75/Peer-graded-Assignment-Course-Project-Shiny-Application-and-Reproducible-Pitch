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
shinyServer(
    function(input, output) {
    
    dataInput <- reactive({
        getSymbols(input$symb, src = "yahoo",
                   from = input$dates[1],
                   to = input$dates[2],
                   auto.assign = FALSE)
    })
    
    output$plot <- renderPlot({
        
        chartSeries(dataInput(), theme = chartTheme("white"),
                    type = "line", TA = NULL)
    })
    
})
