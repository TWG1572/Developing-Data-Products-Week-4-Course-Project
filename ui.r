library(shiny)
library(datasets)
library(dplyr)
library(tidyverse)

data(mtcars)


shinyUI(
  fluidPage(    
    titlePanel(h4("Car Purchase Options Filter - Returns a list of cars meeting desired specifications")),

    sidebarLayout(      
      sidebarPanel(
        h4("Chose desired car characteristics"),
        selectInput("cyl", "Cylinders:", choices = c(4,6,8)),
        selectInput("am", "Transmission:  1=manual, 0=Automatic", choices = c(0,1)),
        sliderInput("mpg", "Desired minimum MPG of the Car?", 10, 35, value = 10),
        
        
       h5("Chose")
    ),
      
      mainPanel(
        tableOutput("table"),
      )
      )
)
)
