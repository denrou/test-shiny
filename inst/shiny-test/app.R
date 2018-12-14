#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram
ui <- fluidPage(

    # Application title
    titlePanel("Old Faithful Geyser Data"),

    # Sidebar with a slider input for number of bins
    sidebarLayout(
        sidebarPanel(
            selectInput("my_input", "Objects", ls(envir = globalenv()))
        ),

        # Show a plot of the generated distribution
        mainPanel(
           textOutput("my_output")
        )
    )
)

# Define server logic required to draw a histogram
server <- function(input, output) {

    output$my_output <- renderPrint({
        eval(as.symbol(input$my_input))
    })
}

# Run the application
shinyApp(ui = ui, server = server)
