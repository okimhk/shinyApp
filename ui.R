
library(ggplot2)
library(dplyr)

shinyUI(fluidPage(
  
  navbarPage("Shiny Application and Reproducible Pitch",
             titlePanel("Developing Data Products: Week 4 Assignment"),                      
                      sidebarLayout(
                        sidebarPanel(
                          helpText("Two methods to calculate BMI"),
                          numericInput("weight", label = h5(strong("Enter your weight (in kilograms)")), value = 68),
                          br(),
                          numericInput("height", label = h5(strong("Enter your height (in centimeters)")), value = 170),
                          br(),
                          helpText("When ready, click the button below"),
                          actionButton("run1", label = "See Results"),
                          br(),
                          br(),
                          numericInput("weight2", label = h5(strong("Enter your weight (in pounds)")), value = 150),
                          br(),
                          numericInput("height2", label = h5(strong("Enter your height (in inches)")), value = 65),
                          br(),
                          helpText("When ready, click the button below"),
                          actionButton("run2", label = "See Results"),
                          br()
                        ),
                        
                        mainPanel(
                          h4(strong("BMI Calculator")),
                          br(),
                          h4("What is BMI?"),
                          h4("BMI is a person's weight in kilograms divided by the square of height in meters. While BMI does not measure body
                             fat directly, research has shown that BMI is moderately correlated with more direct measures of body fat obtained
                             from skinfold thickness measurements, bioelectrical impedance, densitometry (underwater weighing), dual energy
                             x-ray absorptiometry (DXA) and other methods."),
                          
                          h4("Furthermore, BMI appears to be as strongly correlated with various  metabolic and disease outcome as are these
                             more direct measures of body fatness. In general, BMI is an inexpensive and easy-to-perform method of screening
                             for weight category, for example underweight, normal or healthy weight, overweight, and obesity."),
                          h4("What is BMI?"),
                          br(),
                          br(),
                          h4(strong("Your BMI: ")),
                          verbatimTextOutput("bmi"),
                          verbatimTextOutput("bmi2"),
                          br(),
                          br()

                        )))
  ))