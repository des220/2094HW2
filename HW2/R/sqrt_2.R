#' Calculate the sqrt of x
#'
#' @param x number to be included in the calculation
#'
#' @return the sqrt of x and trigger errors with a negative input

sqrt_2 = function(x){
  if (x < 0){
    abort(message = 'negative input, NA introduced!', class = "invalid_input", val=x)
  } 
  else {
    return(sqrt(x))
  }
}