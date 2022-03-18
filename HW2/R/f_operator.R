#' transform *sqrt.2()* and *log.2()* into functions that can handle errors originally with lapply
#'
#' @param f log_2 or sqrt_2
#'
#' @return a function or an error condition object when x<=0
#' 
#' @importFrom rlang catch_cnd

f_operator = function(f){
  force(f)
  function(x, ...){
    if(x <= 0){
      cnd = catch_cnd(abort(message = "invalid input", .subclass = "invalid_input", invalid_input = x))
    }
    else{
      f(x)
    }
  }
}