dijkstra = function(fromNode, relType, toNode, direction = "out", cost_property = character()) UseMethod("dijkstra")

dijkstra.default = function(x, ...) {
  stop("Invalid object. Must supply node object.")
}

dijkstra.node = function(fromNode, relType, toNode, cost_property, direction = "out") {
  return(shortest_path_algo(all=F, 
                            algo="dijkstra", 
                            fromNode=fromNode, 
                            relType=relType, 
                            toNode=toNode, 
                            direction=direction, 
                            cost_property=cost_property))
}