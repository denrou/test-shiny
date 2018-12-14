#' @export
my_shiny_app <- function() {
  appDir <- system.file("shiny-test", package = "test")
  shiny::runApp(appDir, display.mode = "normal")
}
