library(shiny)
shinyServer(
  function(input, output) {
    output$id1 <- renderText({input$id1})
    output$id2 <- renderText({input$id2})
    output$text3 <- renderText({
        input$goButton
        isolate(paste(input$id1, input$id2))
    })
    output$text4 <- renderText({
      if (input$radio1 == 2) "Add Values"
      else if (input$radio1 == 3) "Subtract Number 1 from Number 2"
      else if (input$radio1 == 4) "Multiply Values"
      else "Do Nothing. Display Values"
    })
    output$text5 <- renderText({
      if (input$radio1 == 2) input$id1 + input$id2
      else if (input$radio1 == 3) input$id1 - input$id2
      else if (input$radio1 == 4) input$id1 * input$id2
      else paste(input$id1, input$id2)
    })
}
)