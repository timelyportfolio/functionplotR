#' Interactive `d3.js` Function Plots
#'
#' Create an interactive d3.js based function plot as an htmlwidget.
#'
#' @example ./inst/examples/examples.R
#' 
#' @import htmlwidgets
#'
#' @export
functionplot <- function(
  fn = NULL,
  target = NULL,
  title = NULL,
  xDomain = NULL,
  yDomain = NULL,
  xLabel = NULL,
  yLabel = NULL,
  disableZoom = NULL,
  grid = NULL,
  tip = NULL,
  annotations = NULL,
  plugins = NULL,
  ...,
  width = NULL, height = NULL,
  elementId = NULL
) {

  # forward options using x
  x = Filter(
    Negate(is.null),
    list(
      data = if(is.list(fn)){
        fn
      } else {
        lapply(fn,function(f){
          # if character/string then assume it is a function
          #  that function-plot expects to be {fn: '...'}
          if(is.character(f)){
            list(fn = f)
          } else {
            f
          }
        })
      },
      target = target,
      title = title,
      xDomain = xDomain,
      yDomain = yDomain,
      xLabel = xLabel,
      yLabel = yLabel,
      disableZoom = disableZoom,
      grid = grid,
      tip = tip,
      annotations = annotations,
      plugins = plugins,
      ...
    )
  )
  
  attr(x,"TOJSON_ARGS") = c(auto_unbox=TRUE)

  # create widget
  htmlwidgets::createWidget(
    name = 'functionplot',
    x,
    width = width,
    height = height,
    package = 'functionplotR',
    elementId = elementId
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
