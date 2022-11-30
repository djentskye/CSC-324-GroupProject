# Door helper
door <- function(source, target, className){
  actionButton(paste(source, "_to_", target, sep=""), "", class = className)
}

# Helper function to move between exhibits
switch_page <- function(name) {
  updateTabsetPanel(inputId = "wizard", selected = paste0("page_", name))
}

# Function to create main museum page
create_main <- function(){
  div(
    class = "museumContent",
    
    # Door1
    div(
      class = "doorDiv",
      door("main", "E1", "door1"),
      h4("Exhibition 1")
    ),
    
    # Door2
    div(
      class = "doorDiv",
      door("main", "E2", "door2"),
      h4("Exhibition 2")
    ),
    
    # Door3
    div(
      class = "doorDiv",
      door("main", "E3", "door3"),
      h4("Exhibition 3")
    ),
    
    div(
      style = "height: 300px;"
    )
    
  )
}

# Function to create exhibit1
create_exhibit_1 <- function(){
  div(
    class = "exhibitContent",

    # Left Door
    div(
      class = "leftDoorDiv",
      door("E1", "E2", "door"),
      h4("Exhibition 2")
    ),
    
    actionButton("E1_to_map", "Go to map"),

    # Right Door
    div(
      class = "rightDoorDiv",
      door("E1", "E3", "door"),
      h4("Exhibition 3")
    )
  )
}


# Function to create exhibit2
create_exhibit_2 <- function(){
  div(
    class = "exhibitContent",

    # Left Door
    div(
      class = "leftDoorDiv",
      door("E2", "E1", "door"),
      h4("Exhibition 1")
    ),
    
    actionButton("E2_to_map", "Go to map"),

    # Right Door
    div(
      class = "rightDoorDiv",
      door("E2", "E3", "door"),
      h4("Exhibition 3")
    )
  )
}

# Function to create exhibit3
create_exhibit_3 <- function(){
  div(
    class = "exhibitContent",

    # Left Door
    div(
      class = "leftDoorDiv",
      door("E3", "E1", "door"),
      h4("Exhibition 1")
    ),
    
    actionButton("E3_to_map", "Go to map"),

    # Right Door
    div(
      class = "rightDoorDiv",
      door("E3", "E2", "door"),
      h4("Exhibition 2")
    )
  )
}

