library(shiny)

shinyUI(
    pageWithSidebar(
        
        headerPanel("Data Science Capstone Project"),
        
        sidebarPanel(
            h3('INPUT SECTION'),
            textInput(inputId = "itext", 'Enter your text here:')
            
            ),
        
        mainPanel(
            h3('NEXT WORD PREDICT'),
            textOutput('itext')
            
            )
    )
)