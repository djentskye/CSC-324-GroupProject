# Door helper
door <- function(source, target){
  actionButton(paste(source, "_to_", target, sep=""), "", class = "door")
}

# Arrow helpers
left_arrow <- function(source, target){
  actionButton(paste(source, "_to_", target, sep=""), "", class = "left_arrow")
}
right_arrow <- function(source, target){
  actionButton(paste(source, "_to_", target, sep=""), "", class = "right_arrow")
}

# Helper function to move between pages
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
      door("main", "E1"),
      h4("Exhibition 1")
    ),
    
    # Door2
    div(
      class = "doorDiv",
      door("main", "E2"),
      h4("Exhibition 2")
    ),
    
    # Door3
    div(
      class = "doorDiv",
      door("main", "E3"),
      h4("Exhibition 3")
    ),
    
    div(
      style = "height: 300px;"
    )
    
  )
}

# Function to create exhibition1
create_exhibition_1 <- function(){
  div(
    class = "exhibitionContent",

    # Left Door
    div(
      class = "leftDoorDiv",
      left_arrow("E1", "E2"),
      h4("Exhibition 2")
    ),
    
    actionButton("E1_to_map", "Go to map"),

    # Right Door
    div(
      class = "rightDoorDiv",
      right_arrow("E1", "E3"),
      h4("Exhibition 3")
    )
  )
}


# Function to create exhibition2
create_exhibition_2 <- function(){
  div(
    class = "exhibitionContent",

    # Left Door
    div(
      class = "leftDoorDiv",
      left_arrow("E2", "E1"),
      h4("Exhibition 1")
    ),
    
    actionButton("E2_to_map", "Go to map"),

    # Right Door
    div(
      class = "rightDoorDiv",
      right_arrow("E2", "E3"),
      h4("Exhibition 3")
    )
  )
}

# Function to create exhibition3
create_exhibition_3 <- function(){
  div(
    class = "exhibitionContent",

    # Left Door
    div(
      class = "leftDoorDiv",
      left_arrow("E3", "E1"),
      h4("Exhibition 1")
    ),
    
    actionButton("E3_to_map", "Go to map"),

    # Right Door
    div(
      class = "rightDoorDiv",
      right_arrow("E3", "E2"),
      h4("Exhibition 2")
    )
  )
}
