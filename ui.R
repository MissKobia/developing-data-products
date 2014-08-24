library(shiny)

shinyUI(pageWithSidebar(
  
  headerPanel("Miles Per Gallon"),
  
  sidebarPanel(
    selectInput("variable","Variable:",
                list("Cylinders"="cyl",
                     "Gears"="gear",
                     "Horsepower"="hp",
                     "Weight"="wt")),
    checkboxInput("outliers", "show outliers", FALSE)
    ),
  
  mainPanel(
    h3(textOutput("caption")),
    
    plotOutput("mpgPlot")
    )
))