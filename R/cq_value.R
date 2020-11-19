#' Finding quantificaiton vlaue for qPCR
#'
#' @param x Numeric vector
#'
#' @return
#' Numeric intergers
#' @export
#'
#'@rdname DNAanalysis
#' @examples
#'Cq_value(5)
#'


#Function:
Cq_value <- function(x){
  Cq_avg <- (22.245) + ((-3.2048)*(x))
  return(Cq_avg)
}

Cq_value(25)






