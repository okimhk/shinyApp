

library(ggplot2)
library(dplyr)



shinyServer(function(input, output,session) {
  weight <- reactive({
    as.numeric(input$weight)
  })
  
  height <- reactive({
    as.numeric(input$height)
  })
  
  bmi <- eventReactive(input$run1, {
    bmi <- weight() / ((height()/100)^2)
    bmi
  })
  
  output$bmi <- renderText({
    bmi()
  })

  weight2 <- reactive({
    as.numeric(input$weight2)
  })
  
  height2 <- reactive({
    as.numeric(input$height2)
  })
  
  bmi2 <- eventReactive(input$run2, {
    bmi <- (weight2() / (height2()^2)) * 703
    bmi
  })
  
  output$bmi2 <- renderText({
    bmi2()
  })
  
  output$table <- renderTable({
    table <- data.frame(c("Below 18.5", "18.5 - 24.9", "25.0 - 29.9", "30.0 and Above"))
    names(table) <- "BMI"
    table$Weight_Status <- c("Underweight", "Normal or Healthy Weight", "Overweight", "Obese")
  })
  

})
