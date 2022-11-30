# helper function
# make orientation actually make the door image in the correct orientation
door <- function(current, target, label, orientation){
  actionButton(paste("d_page_", current, "_", target, sep=""), label, style = "width: 200px; height: 50px; background: url('Color-blue.jfif'); background-size: cover; background-position: center;")
}

navigation_button <- function(current, target, label){
  actionButton(paste("n_page_", current, "_", target, sep=""), label, style = "width: 160px; height: 50px; background: url('green.jpg'); background-size: cover; background-position: center;")
}

# Make the navigation buttons that are at the top of every page
navigation_buttons <- function(current){
  list(
    navigation_button(current, "A", "About"),
    navigation_button(current, "E1", "Exhibition 1"),
    navigation_button(current, "E2", "Exhibition 2"),
    navigation_button(current, "E3", "Exhibition 3"),
    navigation_button(current, "M", "Map")
  )
}

# Define UI for the application
ui <- fluidPage(
  
  tabsetPanel(
    id = "wizard",
    type = "hidden",
    # About page
    tabPanel("page_A",
             navigation_buttons("A"),
             "Welcome!",
             actionButton("page_A_M", "Start")
    ),
    # Map page
    tabPanel("page_M", 
             navigation_buttons("M"),
             door("M", "E1", "Exhibition 1", "C"),
             door("M", "E2", "Exhibition 2", "C"),
             door("M", "E3", "Exhibition 3", "C"),
             "Map stuff"
    ),
    # Exhibition 1 page
    tabPanel("page_E1",
             navigation_buttons("E1"),
             door("E1", "E3", "Exhibition 3", "L"),
             door("E1", "E2", "Exhibition 2", "R"),
             "Exhibition 1 stuff"
    ),
    # Exhibition 2 page
    tabPanel("page_E2", 
             navigation_buttons("E2"),
             door("E2", "E1", "Exhibition 1", "L"),
             door("E2", "E3", "Exhibition 3", "R"),
             "Exhibition 2 stuff"
    ),
    # Exhibition 3 page
    tabPanel("page_E3", 
             navigation_buttons("E3"),
             door("E3", "E2", "Exhibition 2", "L"),
             door("E3", "E1", "Exhibition 1", "R"),
             "Exhibition 3 stuff"
    )
  )
)
