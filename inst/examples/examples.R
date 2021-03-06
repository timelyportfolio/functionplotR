#devtools = =install_github("timelyportfolio/functionplotR")

#recreate function-plot examples
#  http =//maurizzzio.github.io/function-plot/

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
    renderer = htmlwidgets::JS("function(x,y,index){ }")
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

functionplot(
  fn = list(
    fn = "1/x",
    derivative = list(
      fn = "-1 / x / x",
      updateOnMouseMove = TRUE
    )
  )
)

functionplot(
  fn = list(
    fn = "tan(x)",
    derivative = list(
      fn = "1 / (cos(x) ^ 2)",
      updateOnMouseMove = TRUE
    )
  )
)

functionplot(
  yDomain = c(-2, 2),
  xDomain = c(-2, 2),
  fn = c("sqrt(1 - x * x)","-sqrt(1 - x * x)"),
  width = 325,
  height = 300
)

functionplot(
  yDomain = c(-2, 2),
  xDomain = c(-2, 2),
  fn = list(
    x = "cos(t)",
    y = "sin(t)",
    fnType = "parametric",
    graphType = "polyline"
  ),
  width = 325,
  height = 300
)

functionplot(
  yDomain = c(-4.428571429, 4.428571429),
  xDomain = c(-7, 7),
  fn = list(
    x = 'sin(t) * (exp(cos(t)) - 2 cos(4t) - sin(t/12)^5)',
    y = 'cos(t) * (exp(cos(t)) - 2 cos(4t) - sin(t/12)^5)',
    range = c(-10 * pi, 10 * pi),
    fnType = 'parametric',
    graphType = 'polyline'
  ),
  width = 550,
  height = 350
)


functionplot(
  yDomain = list(-1.897959183, 1.897959183),
  xDomain = list(-3, 3),
  fn = list(
    r = 'r0 * cos(theta - gamma) + sqrt(a^2 - r0^2 * (sin(theta - gamma))^2)',
    scope = list(
      a = 1,
      r0 = 0,
      gamma = 0
    ),
    fnType = 'polar',
    graphType = 'polyline'
  ),
  width = 550,
  height = 350
)


functionplot(
  yDomain = list(-1.897959183, 1.897959183),
  xDomain = list(-3, 3),
  fn = list(
    r = '2 * sin(4 theta)',
    fnType = 'polar',
    graphType = 'polyline'
  ),
  width = 550,
  height = 350
)


functionplot(
  yDomain = list(-1.897959183, 1.897959183),
  xDomain = list(-3, 3),
  fn = list(
    fn = 'x * x + y * y - 1',
    fnType = 'implicit'
  ),
  width = 550,
  height = 350
)

functionplot(
  yDomain = list(-3.795918366, 3.795918366),
  xDomain = list(-6, 6),
  disableZoom = TRUE,
  fn = list(
    fn = 'cos(PI * x) - cos(PI * y)',
    fnType = 'implicit'
  )
)

functionplot(
  fn = list(
    points = list(
      list(1, 1),
      list(2, 1),
      list(2, 2),
      list(1, 2),
      list(1, 1)
      ),
    fnType = 'points',
    graphType = 'scatter'
  )
)
functionplot(
  fn = list(
    points = list(
      list(1, 1),
      list(2, 1),
      list(2, 2),
      list(1, 2),
      list(1, 1)
      ),
    fnType = 'points',
    graphType = 'polyline'
  )
)


functionplot(
  xDomain = list(-3, 6),
  yDomain = list(-4, 4),
  grid = TRUE,
  fn = list(
    vector = list(2, 1),
    offset = list(1, 2),
    graphType = 'polyline',
    fnType = 'vector'
  )
)

