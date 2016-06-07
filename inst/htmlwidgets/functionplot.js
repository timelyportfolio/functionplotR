HTMLWidgets.widget({

  name: 'functionplot',

  type: 'output',

  factory: function(el, width, height) {

    var instance = {};
    
    var drawPlot = function(el, instance) {
      
      // clear out the container in case of dynamic/Shiny
      el.innerHTML = "";

      // crudely copy our x in case we are redrawing
      //  if we don't do this then the updateOnMouseMove
      //  gets messed up
      var x = JSON.parse(JSON.stringify(instance.x));

      x.target = el;
      x.width = el.getBoundingClientRect().width;
      x.height = el.getBoundingClientRect().height;
      
      //insure data is an array
      if(!Array.isArray(x.data)){
        x.data = [x.data];
      }
      
      var fp = functionPlot(x);
      
      // deal with chopped-off legend text
      //  await https://github.com/maurizzzio/function-plot/issues/67
      d3.select(el).select('text.top-right-legend')
        .attr('dy','0.5em');
      
      return fp;      
  
    };
    
    return {

      renderValue: function(x) {

        instance.x = x;
        instance.functionplot = drawPlot(el, instance);

      },

      resize: function(width, height) {

        instance.functionplot = drawPlot(el, instance);

      }, 
      
      instance: instance
      
    };
  }
});
