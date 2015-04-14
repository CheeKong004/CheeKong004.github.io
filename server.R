RetailSellingPrice <- function(costprice, grossprofitmargin) costprice/(1-grossprofitmargin)

shinyServer(
  function(input, output) {
    output$inputCP <- renderPrint({input$costprice})
    output$inputGPM <- renderPrint({input$grossprofitmargin})
    output$CRSP <- renderPrint({RetailSellingPrice(input$costprice, input$grossprofitmargin)})
  }
)