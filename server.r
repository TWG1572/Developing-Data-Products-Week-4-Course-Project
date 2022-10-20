library(shiny)
library(datasets)
library(dplyr)
library(tidyverse)


shinyServer <- function(input, output) {
  
  table1 <- reactive({
    mtcars %>%
      filter(cyl == input$cyl) %>%
      filter(am  == input$am)  %>%
      filter(mpg  >=  input$mpg)
  })
  
 
  output$table <- renderTable({
    row.names(table1())
  
  })

}
