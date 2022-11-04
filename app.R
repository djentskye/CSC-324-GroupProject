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

  tabsetPanel(
    id = "wizard",
    type = "hidden",
    tabPanel("page_I", 
             "Intro Page",
             actionButton("page_I_E1", "Exhibit 1", icon = icon("table")),
             actionButton( "page_I_E2", "Exhibit 2")
    ),
    tabPanel("page_E1", 
             "Exhibit 1",
             actionButton("page_E1_I", "back")
    ),
    tabPanel("page_E2", 
             "Exhibit 2",
             actionButton("page_E2_I", "back")
    )
  )
)

# Define server logic required to draw a histogram
server <- function(input, output, session) {
  switch_page <- function(i) {
    updateTabsetPanel(inputId = "wizard", selected = paste0("page_", i))
  }
  
  observeEvent(input$page_I_E1, switch_page("E1"))
  observeEvent(input$page_I_E2, switch_page("E2"))
  observeEvent(input$page_E1_I, switch_page("I"))
  observeEvent(input$page_E2_I, switch_page("I"))
}

# Run the application 
shinyApp(ui = ui, server = server)
