#' @export
day_02_p1 <- function(x) {
  
  x = lapply(strsplit(x, "x"), function(x) ._wrap_req(unlist(as.integer(x))))
  
  return(sum(unlist(x)))
}

#' @export
day_02_p2 <- function(x) {
  
  x = lapply(strsplit(x, "x"), function(x) ._rib_req(unlist(as.integer(x))))
  
  return(sum(unlist(x)))
}

._wrap_req <- function(x) {
  return(
    sum(
      sum(c(2*x[1]*x[2], 2*x[2]*x[3], 2*x[1]*x[3])),
      min(c(x[1]*x[2], x[2]*x[3], x[1]*x[3]))
    )
  )
}

._rib_req <- function(x) {
  return(sum(sort(x)[1:2]) * 2 + prod(x))
}
