#' @export
day_04 = function(key, zeros) {
  run = TRUE
  ii = 1
  while (run == TRUE) {
    z = digest::digest(paste0(key,ii), algo = "md5", serialize = FALSE)
    
    if (substr(z,1,zeros) == paste0(rep(0, zeros), collapse="")) {
      run = FALSE
    } else {
      ii = ii + 1
    }
  }
  return(ii)
}
