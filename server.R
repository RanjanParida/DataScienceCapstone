library(shiny)
library(stringr)
source("cleanText.R", local=TRUE)
source("predictedWord.R", local=TRUE)
source("loadData.R", local=TRUE)


shinyServer(
    function(input, output) {
        
        y <- reactive(predictedWord(input$src, input$itext))
                                                
        output$itext <- renderText(y()[1])
        output$othr <- renderPrint(if(length(y()[-1]) != 0)
            head(y()[-1], 5) else NULL)
        
    }
)