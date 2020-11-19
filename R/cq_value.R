#' Finding quantificaiton vlaue for qPCR
#'
#' @param x Numeric intergers
#'
#' @return
#' Numeric intergers
#' @export
#'
#'@rdname numeric intergers
#' @examples
#'> Cq_value(5)
#'[1] 6.221


#Function:
Cq_value <- function(x){
  Cq_avg <- (22.245) + ((-3.2048)*(x))
  return(Cq_avg)
}

Cq_value(25)

#Dependencies
#operates on lists




