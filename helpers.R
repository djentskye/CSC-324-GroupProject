# Door helper
door <- function(source, target, className){
  actionButton(paste(source, "_to_", target, sep=""), "", class = className)
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
      door("main", "E1", "door1"),
    ),
    
    # Door2
    div(
      class = "doorDiv",
      door("main", "E2", "door2"),
    ),
    
    # Door3
    div(
      class = "doorDiv",
      door("main", "E3", "door3"),
    ),
    
    div(
      style = "height: 300px;"
    )
    
  )
}

# Function to create art exhibition
create_exhibition_1 <- function(){
  div (
    class = "exhibitionContent",
    
    div(
      class = "topNav",
      
      # Left Arrow
      div(
        style = "width: 100px; height: 80px; border:0px;"
      ),
      
      actionButton("E1_to_map", "HOME", class = "mapButton"),
      
      # Right Arrow
      div(
        right_arrow("E1", "E2"),
      )
    ),
    
    div (
      class = "contentDiv",
      actionButton("art1", "", class = "art1")
    ),
    
    div (
      class = "contentDiv",
      actionButton("art2", "", class = "art2")
    ),
    
    div (
      class = "contentDiv",
      actionButton("art3", "", class = "art3")
    ),
    
  )
  
}


# Function to create deepfake exhibition
create_exhibition_2 <- function(){
  div (
    class = "exhibitionContent",
    
    div(
      class = "topNav",
      
      # Left Arrow
      div(
        left_arrow("E2", "E1"),
      ),
      
      actionButton("E2_to_map", "HOME", class = "mapButton"),
      
      # Right Arrow
      div(
        right_arrow("E2", "E3"),
      )
    ),
    
    div (
      class = "contentDiv",
      actionButton("deepfake1", "", class = "deepfake1")
    ),
    
    div (
      class = "contentDiv",
      actionButton("deepfake2", "", class = "deepfake2")
    ),
    
    div (
      class = "contentDiv",
      actionButton("deepfake3", "", class = "deepfake3")
    )
    
  )
   
}

# Function to create music exhibition
create_exhibition_3 <- function(){
  div(
    class = "exhibitionContent",

    div(
      class = "topNav",
      
      # Left Arrow
      div(
        left_arrow("E3", "E2"),
      ),
      
      actionButton("E3_to_map", "HOME", class = "mapButton"),
      
      # Right Arrow
      div(
        style = "width: 100px; height: 80px; border:0px;"
      )
    ),
    
    div (
      class = "contentDiv",
      actionButton("music1", "", class = "music1")
    ),
    
    div (
      class = "contentDiv",
      actionButton("music2", "", class = "music2")
    ),
    
    div (
      class = "contentDiv",
      actionButton("music3", "", class = "music3")
    )
    
  )
}

