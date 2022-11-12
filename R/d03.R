#' @export
day_03_p1 = function(x) {
  input = unlist(strsplit(x, "")) 
  return(length(unique(._houses_visited(input))))
}

#' @export
day_03_p2 = function(x) {
  input = unlist(strsplit(x, "")) 
  ans = length(
    unique(
      c(
        ._houses_visited(input[seq_along(input) %% 2 == 0]),
        ._houses_visited(input[seq_along(input) %% 2 > 0])
      )
    )
  )
  return(ans)
}

._houses_visited = function(moves) {
  track = vector(mode = "character", length = length(moves) + 1)
  
  track[1] = "0,0"
  
  x = 0
  y = 0
  
  for (ii in seq_along(moves)) {
    
    tmp = moves[ii]
    
    if (tmp == "^") {x = x + 1; track[ii + 1] = paste0(x,",",y); next}
    
    if (tmp == "v") {x = x - 1; track[ii + 1] = paste0(x,",",y); next}
    
    if (tmp == ">") {y = y + 1; track[ii + 1] = paste0(x,",",y); next}
    
    if (tmp == "<") {y = y - 1; track[ii + 1] = paste0(x,",",y); next}
    
  }
  
  return(track)
}
