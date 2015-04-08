library(shiny)
#setwd("Coursera-DataProducts")
#options(shinyapps.http.trace = TRUE)
#shinyapps::setAccountInfo(name='ashker', token='7A968247428938CAC10452FB3AC4F540', secret='CLL9kw8u7mDg00bZTNdSJhG3cS3kK+dSzNVt5oz+')
compInt = function(principal, rate, term, intType="simple")
{
  interest=0
  if (intType == "simple")
  {
    interest = principal * term * rate / 100
  }
  if (intType == "compound")
  {
    interest = principal *( ((1 + rate / 100)^term) - 1)
  }
  return (interest)
}


shinyServer(
  function(input, output) {
    output$oPrincipal = renderPrint ({input$iPrincipal})
    output$oTerm = renderPrint ({input$iTerm})
    output$oIntType = renderPrint ({input$iIntType})
    output$oRate = renderPrint ({input$iRate})
    output$oName = renderPrint ({input$iName})

    intType = reactive({intType = input$iIntType})
    #output$int = renderPrint(compInt(output,input$iIntType))
    #output$int = r
    renderPrint(input$iPrincipal * input$iTerm * input$iRate / 100)
    output$interest = renderPrint({
      input$btnCompInt  
      isolate(compInt(input$iPrincipal, input$iRate, input$iTerm,input$iIntType))
    })
    
  }
)