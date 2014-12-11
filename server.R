library(shiny)
j <<- read.table("data/data.txt")

shinyServer(
    function(input, output) {
        
        y <- reactive(
            if (input$itext!=""){
                k <- unlist(strsplit(input$itext, " "))
                n <-length(k)
                b <- k[n]
                if (b %in% j) {
                    t <- read.table(paste("data/", b, ".txt", sep=""))
                } else {
                    t <- read.table(paste("data/", "UNK.txt", sep=""))
                }
                as.character(t[1,1])
            } else input$itext
        )
        
        output$itext <- renderText(y())
        
    }
)