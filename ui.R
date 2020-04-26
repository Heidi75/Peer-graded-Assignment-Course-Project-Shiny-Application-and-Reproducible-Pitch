#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#
library(quantmod)
library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
    titlePanel(
        
        h1("Introducing War for Oil", align = "center")
    ),
    sidebarLayout(
        sidebarPanel(
            h2("WTI is used as a benchmark in oil"),
            p("The price of oil is what is determining political alliances, since the USA dollar - is the petro-dollar, it is the indicator of future, better then the inflated markets with lack of capital, or a belief that people vote for politicians"),
            
            img(src = "Trump milking Saudi.jpg", height = 250, width = 350),
            titlePanel("Blood for Oil"),
            p("In late 2007 and early 2008 - oil market skyrocketed when Bush threatened war with Iran. Then Obama destroyed our homes with Iranian General Qasem Soleimani "),
            
            p("March 2020 Saudi and Russia sinks oil prices"),
            helpText("Select a event to examine, by date. Significant dates at the bottom of the page" ),
            
            textInput("symb", "Symbol", "WTI"),
            
            dateRangeInput("dates",
                           "Date range",
                           start = "2007-01-11",
                           end = as.character(Sys.Date())),
            
            br(),
            br(),
            img(src = "saudiswordchart.jpg", height = 250, width = 300)
            
        ),
        
        
        
        mainPanel(  
            HTML('<iframe width="560" height="315" src="https://www.youtube.com/embed/2vFNiCybny8" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>'),
            plotOutput("plot"),
            
            
            
            h4("Destroy lives and homes"),
            h2("Operation Hope"),
            p(" In March 2015, after the Obama Administration helped an Iranian backed militia Houthi's take 
            over Yemen.   They supported Saudi Arabia in a bombing campaign."),
            HTML('<iframe width="400" height="225" src="https://www.youtube.com/embed/Dymeg2dMuZM" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>'),
            
            p("November 8, 2016 President Trump was elected.  November 6, 2018 Midterm elections. "), 
            
            h4("March 2020 Saudi and Russia sinks oil prices as they did not win the war in Yemen, 
            just 5 years of  genocide ... of which the oil prices will stay low until new political alliance
            meeting the requirements of the oil mafia. "),
            p("The stunning events of April 20, 2020 when crude oil traded at negative $40 per barrel may have marked a seminal moment in market history, and might very well have been the low point in crude oil prices for all time.")
            
            
        )
    )
    
) )