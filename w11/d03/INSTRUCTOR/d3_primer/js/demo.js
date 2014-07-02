var canvasW = 500;
var canvasH = 100;

// Create the SVG image...

<<<<<<< HEAD
var svg = d3.select('#graph')
  .append('svg')
  .attr('width', canvasW)
  .attr('height', canvasH);
=======
// select DOM element using CSS selector
var svg = d3.select("#graph")
  .append('svg')
  .attr('width', canvasW)
  .attr('height', canvasH);

>>>>>>> 0b0d182505174df8c5c55a896b00d15edafd97cf

function redrawGraph() {

  // Redraw the graph image...
  var data = getRandomDataset();

<<<<<<< HEAD
  var scaleY = d3.scale.linear()
    .range([0, canvasH])
    .domain([0, d3.max(data)]);

  var bars = svg.selectAll('rect').data(data);

  bars
    .enter()
    .append('rect')
    .attr('y', canvasH)
    .attr('height', 0);

  bars
    .transition()
    .attr('x', function(d, i) { return i * (canvasW / data.length); })
    .attr('y', function(d) { return canvasH - scaleY(d); })
    .attr('width', 10)
    .attr('height', function(d) { return scaleY(d); })
    .attr('fill', function(d) { return 'rgb('+ d*10 +',0,'+ d*10 +')'; });

=======
  // scaleY becomes a function into which you can plug data (see below)
  var scaleY = d3.scale.linear()
    .range([0, canvasH])
    .domain([0, d3.max(data)]); // used to translate the percentage that the data falls within to the correspeding pixel count with the range

  // creates a selection group of elements, which may or may not exist
  var bars = svg.selectAll('rect').data(data);

  // enter
  bars
    .enter()
    .append('rect') // there is an svg 'rect' element
    .attr('y', canvasH) // this specifies it's y position on the coordinate plain
    .attr('height', 0); // this sets

  // known as the update group, (implicit)
  bars
    .transition() // tells says everyhing that follows this
    .attr('x', function(d, i){ return i * (canvasW / data.length); }) // sets up the NUMBER of bars where i is the index
    .attr('y', function(d){  return canvasH - scaleY(d); }) // this specifies it's y position on the coordinate plain
    .attr('width', 10) // sets up the with
    .attr('height', function(d, i){ return scaleY(d); })
    .attr('fill', function(d){ return 'rgb(0, 0, ' + d * 9 + ')' })

>>>>>>> 0b0d182505174df8c5c55a896b00d15edafd97cf
  bars
    .exit()
    .transition()
    .attr('height', 0)
    .attr('y', canvasH)
    .remove();
<<<<<<< HEAD
}
=======
}
>>>>>>> 0b0d182505174df8c5c55a896b00d15edafd97cf
