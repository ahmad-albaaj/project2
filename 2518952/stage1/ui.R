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
ui <- fixedPage(

    # Application title
    titlePanel(tags$i("Old Faithful Geyser Data")),
    tags$img(src = "https://afmcstudentportal.ca/App_Content/Logos/c6d8ae58-0209-4296-9ec7-d14d15143b6f.jpg"),
  
    # Sidebar with a slider input for number of bins 
    fluidRow(column(3,
            sliderInput("bins",
                        "Number of bins:",
                        min = 1,
                        max = 50,
                        value = 30)
        ),

        # Show a plot of the generated distribution
        column(9,tabsetPanel(tabPanel("Plot1", plotOutput("distPlot")),
                              tabPanel("Plot2",plotOutput("distPlot2"))
                )
            ),
        column(4, tags$footer("Ahmad Albaaj")
            ),
        column(4,
               tags$a(href="ahmad.albaaj@umontreal.ca", "ahmad.albaaj@umontreal.ca")
        ),
        column(4,
               tags$a(href="https://www.umontreal.ca/", "https://www.umontreal.ca/")
        )
         )
)
