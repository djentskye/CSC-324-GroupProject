# Load packages ----
library(shiny)
library(rsconnect)

source("helpers.R")

# Define UI for application
ui <- fluidPage(

  # Title
  titlePanel(
    h1("GAInES", align = "center")
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
      "About",
      includeHTML("./html/about.html")
    ),
    
    ################################################################
    
    # Contents of Museum page
    tabPanel(
      "Museum",
      
      # Exhibitions
      tabsetPanel(
        id = "wizard",
        type = "hidden",
        
        # Main page
        tabPanel(
          class = "museum",
          "page_main",
          create_main()
        ),
        
        #E1 page
        tabPanel(
          class = "exhibition_1",
          "page_E1",
          create_exhibition_1()
        ),
        
        #E2 page
        tabPanel(
          class = "exhibition_2",
          "page_E2",
          create_exhibition_2()
        ),
        
        #E3 page
        tabPanel(
          class = "exhibition_3",
          "page_E3",
          create_exhibition_3()
        )
      ),
      
      
    ),
    
    ################################################################
    
    # Contents of Desgin Process page
    tabPanel(
      class = "tab",
      "Design Process",
      includeHTML("./html/design.html")
    ),
    
    ################################################################
    
    # Contents of Sources page
    
    tabPanel(
      class = "tab",
      "Sources",
      includeHTML("./html/sources.html")
    )
  )
  
)
