# Define UI for application that draws a histogram
ui <- fluidPage(
  
  tabsetPanel(
    id = "wizard",
    type = "hidden",
    tabPanel("page_I", 
             "Intro Page",
             actionButton("page_I_E1", "Exhibit 1", style = "width: 200px; height: 50px; background: url('Color-blue.jfif'); background-size: cover; background-position: center;"),
             actionButton( "page_I_E2", "Exhibit 2", style = "width: 200px; height: 50px; background: url('Color-blue.jfif'); background-size: cover; background-position: center;")
    ),
    tabPanel("page_E1", 
             "Exhibit 1",
             actionButton("page_E1_I", "back", style = "width: 200px; height: 50px; background: url('Color-blue.jfif'); background-size: cover; background-position: center;")
    ),
    tabPanel("page_E2", 
             "Exhibit 2",
             actionButton("page_E2_I", "back", style = "width: 200px; height: 50px; background: url('Color-blue.jfif'); background-size: cover; background-position: center;")
    )
  )
)