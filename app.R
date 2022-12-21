library(shiny)
ui <- fluidPage(
  "Hello, world! Hello!"
)
server <- function(input, output, session) {
}
shinyApp(ui, server)
