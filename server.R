#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

# Define server logic
server <- function(input, output, session) {
  switch_page <- function(i) {
    updateTabsetPanel(inputId = "wizard", selected = paste0("page_", i))
  }
  
  observeEvent(input$page_A_M, switch_page("M"))
  
  # Door stuff
  # Map page
  observeEvent(input$d_page_M_E1, switch_page("E1"))
  observeEvent(input$d_page_M_E2, switch_page("E2"))
  observeEvent(input$d_page_M_E3, switch_page("E3"))
  # E1
  observeEvent(input$d_page_E1_E2, switch_page("E2"))
  observeEvent(input$d_page_E1_E3, switch_page("E3"))
  # E2
  observeEvent(input$d_page_E2_E1, switch_page("E1"))
  observeEvent(input$d_page_E2_E3, switch_page("E3"))
  # E3
  observeEvent(input$d_page_E3_E1, switch_page("E1"))
  observeEvent(input$d_page_E3_E2, switch_page("E2"))
  
  
  # Navigation button stuff
  # About
  observeEvent(input$n_page_A_E1, switch_page("E1"))
  observeEvent(input$n_page_A_E2, switch_page("E2"))
  observeEvent(input$n_page_A_E3, switch_page("E3"))
  observeEvent(input$n_page_A_M, switch_page("M"))
  # Map
  observeEvent(input$n_page_M_A, switch_page("A"))
  observeEvent(input$n_page_M_E1, switch_page("E1"))
  observeEvent(input$n_page_M_E2, switch_page("E2"))
  observeEvent(input$n_page_M_E3, switch_page("E3"))
  # E1
  observeEvent(input$n_page_E1_A, switch_page("A"))
  observeEvent(input$n_page_E1_E2, switch_page("E2"))
  observeEvent(input$n_page_E1_E3, switch_page("E3"))
  observeEvent(input$n_page_E1_M, switch_page("M"))
  # E2
  observeEvent(input$n_page_E2_A, switch_page("A"))
  observeEvent(input$n_page_E2_E1, switch_page("E1"))
  observeEvent(input$n_page_E2_E3, switch_page("E3"))
  observeEvent(input$n_page_E2_M, switch_page("M"))
  # E3
  observeEvent(input$n_page_E3_A, switch_page("A"))
  observeEvent(input$n_page_E3_E1, switch_page("E1"))
  observeEvent(input$n_page_E3_E2, switch_page("E2"))
  observeEvent(input$n_page_E3_M, switch_page("M"))
}

