#' @export
day_01_p1 <- function(x) return(sum(._process(x)))

#' @export
day_01_p2 <- function(x) return(min(which(cumsum(._process(x)) < 0)))

._process = function(x) {
  op <- vector(mode="integer", length=nchar(x))
  
  for (ii in seq_len(nchar(x))) if (substr(x,ii,ii) == "(") op[ii] = 1 else op[ii] = -1
  
  return(op)
}
