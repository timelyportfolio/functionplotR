#' <Add Title>
#'
#' <Add Description>
#'
#' @import htmlwidgets
#'
#' @export
functionplot <- function(message, width = NULL, height = NULL) {

  # forward options using x
  x = list(
    message = message
  )

  # create widget
  htmlwidgets::createWidget(
    name = 'functionplot',
    x,
    width = width,
    height = height,
    package = 'functionplotR'
  )
}

#' Widget output function for use in Shiny
#'
#' @export
functionplotOutput <- function(outputId, width = '100%', height = '400px'){
  shinyWidgetOutput(outputId, 'functionplot', width, height, package = 'functionplotR')
}

#' Widget render function for use in Shiny
#'
#' @export
renderFunctionplot <- function(expr, env = parent.frame(), quoted = FALSE) {
  if (!quoted) { expr <- substitute(expr) } # force quoted
  shinyRenderWidget(expr, functionplotOutput, env, quoted = TRUE)
}
