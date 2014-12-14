library(shiny)

shinyUI(
    pageWithSidebar(
        
        headerPanel("Data Science Capstone Project"),
        
        sidebarPanel(
            h3('INPUT SECTION'),
            selectInput("src", "Text Source:",
                        list("News" = "news", 
                             "Blogs" = "blogs", 
                             "Twitter" = "twitter")),
            textInput(inputId = "itext", 'Enter your text here:')
            
            ),
        
        mainPanel(
            h3('NEXT WORD PREDICTION'),
            textOutput('itext'),
            
            
            h4('Other word options'),
            verbatimTextOutput('othr')
            
            )
    )
)