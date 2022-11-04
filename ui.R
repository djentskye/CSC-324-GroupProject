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