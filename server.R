#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

source("helpers.R")

# Define server logic
server <- function(input, output, session) {
  observeEvent(input$main_to_E1, {
    switch_page("E1")
    # insertUI("head", "beforeEnd", 
    #          tags$style(HTML('.door1 { background-image: url("check.png"); 
    #                                    opacity:0.2;
    #                                    background-position: center;
    #                                  }')
    #                     )
    # )
  })
  
  observeEvent(input$main_to_E2, {
    switch_page("E2")
    # insertUI("head", "beforeEnd", 
    #          tags$style(HTML('.door2 { background-image: url("check.png"); 
    #                                    opacity:0.2;
    #                                    background-position: center;
    #                                  }')
    #          )
    # )
  })
  
  observeEvent(input$main_to_E3, {
    switch_page("E3")
    # insertUI("head", "beforeEnd", 
    #          tags$style(HTML('.door3 { background-image: url("check.png"); 
    #                                    opacity:0.2;
    #                                    background-position: center;
    #                                  }')
    #          )
    # )
  })
  
  observeEvent(input$E1_to_E2, switch_page("E2"))
  observeEvent(input$E1_to_E3, switch_page("E3"))
  
  observeEvent(input$E2_to_E1, switch_page("E1"))
  observeEvent(input$E2_to_E3, switch_page("E3"))
  
  observeEvent(input$E3_to_E1, switch_page("E1"))
  observeEvent(input$E3_to_E2, switch_page("E2"))
  
  observeEvent(input$E1_to_map, switch_page("main"))
  observeEvent(input$E2_to_map, switch_page("main"))
  observeEvent(input$E3_to_map, switch_page("main"))
  
  observeEvent(input$art1, {
    showModal(modalDialog(
      title = "Exhibit",
      includeHTML("./html/art1.html"),
      size = "l",
      easyClose = TRUE
    ))
  })
  
  observeEvent(input$art2, {
    showModal(modalDialog(
      title = "Exhibit",
      includeHTML("./html/art2.html"),
      size = "l",
      easyClose = TRUE
    ))
  })
  
  observeEvent(input$art3, {
    showModal(modalDialog(
      title = "Exhibit",
      includeHTML("./html/art3.html"),
      size = "l",
      easyClose = TRUE
    ))
  })
  
  observeEvent(input$deepfake1, {
    showModal(modalDialog(
      title = "Exhibit",
      includeHTML("./html/deepfake1.html"),
      size = "l",
      easyClose = TRUE
    ))
  })
  
  observeEvent(input$deepfake2, {
    showModal(modalDialog(
      title = "Exhibit",
      includeHTML("./html/deepfake2.html"),
      size = "l",
      easyClose = TRUE
    ))
  })
  
  observeEvent(input$deepfake3, {
    showModal(modalDialog(
      title = "Exhibit",
      includeHTML("./html/deepfake3.html"),
      size = "l",
      easyClose = TRUE
    ))
  })
  
  observeEvent(input$music1, {
    showModal(modalDialog(
      title = "Exhibit",
      includeHTML("./html/music1.html"),
      size = "l",
      easyClose = TRUE
    ))
  })
  
  observeEvent(input$music2, {
    showModal(modalDialog(
      title = "Exhibit",
      includeHTML("./html/music2.html"),
      size = "l",
      easyClose = TRUE
    ))
  })
  
  observeEvent(input$music3, {
    showModal(modalDialog(
      title = "",
      includeHTML("./html/music3.html"),
      size = "l",
      easyClose = TRUE
    ))
  })
  
}

