# Load packages ----
library(shiny)
library(shinythemes)
library(rsconnect)

source("helpers.R")

# Define UI for application
ui <- fluidPage(

  # Title
  titlePanel(
    h1("AI GROUP PROJECT", align = "center")
  ),
  
  # CSS
  tags$head (
    tags$link(rel = "stylesheet", type = "text/css", href = "styles.css")
  ),
  
  # Navigation Pane
  tabsetPanel(
    
    ################################################################
    
    # Contents of About page
    tabPanel(
      class = "tab",
      "About"
    ),
    
    ################################################################
    
    # Contents of Museum page
    tabPanel(
      class = "tab",
      "Museum",
      
      # Exhibits
      tabsetPanel(
        id = "wizard",
        type = "hidden",
        
        # Main page
        tabPanel(
          "page_main",
          create_main()
        ),
        
        #E1 page
        tabPanel(
          "page_E1",
          create_exhibit_1()
        ),
        
        #E2 page
        tabPanel(
          "page_E2",
          create_exhibit_2()
        ),
        
        #E3 page
        tabPanel(
          "page_E3",
          create_exhibit_3()
        )
      ),
      
      
    ),
    
    ################################################################
    
    # Contents of Desgin Process page
    tabPanel(
      class = "tab",
      "Design Process",
    ),
    
    ################################################################
    
    # Contents of Sources page
    
    tabPanel(
      class = "tab",
      "Sources",
    )
  )
  
)
