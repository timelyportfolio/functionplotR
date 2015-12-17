#devtools::install_github("timelyportfolio/functionplotR")

#recreate function-plot examples
#  http://maurizzzio.github.io/function-plot/

library(functionplotR)

functionplot("x^2")

functionplot(
  title = "y = x*x",
  width = 580,
  height = 400,
  disableZoom = TRUE,
  xLabel = "x - axis",
  yLabel = "y - axis",
  fn = "x^2"
)

functionplot(
  xLabel = "real",
  yLabel = "imaginary",
  grid = TRUE,
  fn = c("sqrt(1 - x * x)", "-sqrt(1 - x * x)")
)

functionplot(
  yDomain = c(-1,1),
  xDomain = c(8,24),
  fn = "sin(x)"
)

functionplot(
  fn = list(fn = "sin(x)", nSamples = 1000)
)

# not an example from site but for testing
functionplot(
  fn = list(
    list(fn = "sin(x)", nSamples = 1000),
    list(fn = "sin(x) + 1", nSamples = 1000)
  )
)

functionplot(
  yDomain = c(-1,9),
  fn = "x^2",
  annotations = list(
    list(
      x = -1
    ),
    list(
      x = 1,
      text = "x = 1"
    ),
    list(
      y = 2,
      text = "y = 2"
    )
  )
)

functionplot(
  xDomain = c(-2,12),
  fn = list(
    fn = "3+sin(x)",
    range = c(2,8),
    closed = TRUE
  )
)

functionplot(
  fn = list(
    list( fn = "x", color = "pink" ),
    list( fn = "-x"),
    list( fn = "x * x"),
    list( fn = "x * x * x"),
    list( fn = "x * x * x * x")
  )
)

functionplot(
  fn = list(
    list(
      fn = "-sqrt(-x)",
      nSamples = 100,
      graphType = "scatter"
    ),
    list(
      fn = "sqrt(x)",
      graphType = "polyline"
    ),
    list(
      fn = "x^2",
      graphType = "interval"
    )
  )
)

functionplot(
  tip = list(
    xLine = TRUE,
    yLine = TRUE,
    renderer = htmlwidgets::JS("function(x,y,index){}")
  ),
  yDomain = c(-1, 9),
  fn = list(
    list( fn = "x^2" ),
    list(
      fn = "x",
      skipTip = TRUE
    )
  )
)

functionplot(
  fn = "nthRoot(x, 3) ^ 2"
)

functionplot(
  yDomain = c(-1, 9),
  xDomain = c(-3, 3),
  fn = list(
    fn = "x^2",
    secants = list(
      list( x0 = 1, x1 = 3 ),
      list( x0 = 1, x1 = 2.5 ),
      list( x0 = 1, x1 = 2 )
    )
  )
)

functionplot(
  yDomain = c(-1, 9),
  fn = list(
    fn = "x^2",
    secants = list(
      list(
        x0 = 2,
        updateOnMouseMove = TRUE
      ),
      list(
        x0 = -2,
        updateOnMouseMove = TRUE
      )
    )
  )
)

functionplot(
  yDomain = c(-1, 9),
  fn = list(
    fn = "x^2",
    derivative = list(
      fn = "2*x",
      x0 = 2
    )
  )
)

functionplot(
  yDomain = c(-1, 9),
  fn = list(
    fn = "x^2",
    derivative = list(
      fn = "2*x",
      updateOnMouseMove = TRUE
    )
  )
)

functionplot(
  fn = list(
    list(
      fn = "x * x",
      derivative = list(
        fn = "2*x",
        updateOnMouseMove = TRUE
      )
    ),
    list(
      fn = "x * x * x",
      derivative = list(
        fn = "3 * x * x",
        updateOnMouseMove = TRUE
      )
    )
  )
)
