library(shiny)
shinyUI(pageWithSidebar(
  
  headerPanel("Setting Retail Selling Price"),  
  
  
  sidebarPanel(
    numericInput('costprice', 'Enter the cost price', 0, min = 0, max = 1000, step = 0.01),
    numericInput('grossprofitmargin', 'gross profit margin (20% is 0.2)', 0, min = 0.1, max = 0.5, step = 0.001),
    submitButton('Submit')),
  
  mainPanel(
    h3('Retail Selling Price'),
    h4('The cost price is'),
    verbatimTextOutput("inputCP"),
    h4('The gross profit margin is'),
    verbatimTextOutput("inputGPM"),
    h4('The calculated RSP is'),
    verbatimTextOutput("CRSP"))
))