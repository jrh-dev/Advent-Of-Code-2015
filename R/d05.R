#' @export
day_05_p1 = function(x) return(sum(sapply(x, ._validate_1)))

#' @export
day_05_p2 = function(x) return(sum(sapply(x, ._validate_2)))

._validate_1 = function(x) {
  x = unlist(strsplit(x, ""))
  return(if (._test_1(x,3) & ._test_2(x) & !._test_3(x)) TRUE else FALSE)
}

._validate_2 = function(x) {
  x = unlist(strsplit(x, ""))
  return(if (._test_4(x) & ._test_5(x)) TRUE else FALSE)
}

._test_1 = function(x, min) return(sum(x %in% c("a","e","i","o","u")) >= min)

._test_2 = function(x){
  ii = 1
  cond = FALSE
  while (ii < length(x)) {
    if (x[ii] == x[ii+1]) {cond = TRUE; break} else {ii = ii+1}
  }
  return(cond)
}

._test_3 = function(x){
  ii = 1
  cond = FALSE
  while (ii < length(x)) {
    if (paste0(x[ii], x[ii+1]) %in% c("ab", "cd", "pq", "xy")) {cond = TRUE; break} else {ii = ii+1}
  }
  return(cond)
}

._test_4 = function(x) {
  
  len = length(x)
  
  catch = vector(mode="character",length = len-1)
  ii=1
  while (ii < len) {
    catch[ii] = paste0(x[ii],x[ii+1])
    ii = ii+1
  }
  
  flagged = names(which(table(catch) > 1))
  
  wt = NULL
  
  for (ii in length(flagged)) {
    f = flagged[ii]
    w = which(x == substr(f,1,1) | x == substr(f,2,2))
    wt = c(wt, w) # memory inefficient
  }
  
  
  if (length(w)>0) {
    res = length(w[sapply(w, function(x) (x-1) %in% w | (x+1) %in% w)]) >= 4
  } else {
    res = 0
  }
  
  return(res)
}

._test_5 = function(x){
  ii = 1
  cond = FALSE
  while (ii < length(x)-1) {
    if (x[ii] == x[ii+2]) {cond = TRUE; break} else {ii = ii+1}
  }
  return(cond)
}
