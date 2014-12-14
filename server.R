library(shiny)
source("cleanText.R", local=TRUE)
source("predictedWord.R", local=TRUE)
source("loadData.R", local=TRUE)


shinyServer(
    function(input, output) {
        
        y <- reactive( predictedWord(input$src, input$itext) )       
        output$itext <- renderText( y()[1] );
        
    }
)