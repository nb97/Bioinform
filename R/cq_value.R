#' Finding quantificaiton value for qPCR
#'
#' @param x Numeric vector
#'
#' @return
#' A numeric value that shows how many cycles it takes for the DNA to amplify when ran in qPCR.
#' This can be used to quantify the total amount of DNA.
#' @export
#'
#'@rdname DNAanalysis
#' @examples
#'bioinform::Cq_value(5)


#Function:
Cq_value <- function(x){
  Cq_avg <- (22.245) + ((-3.2048)*(x))
  return(Cq_avg)
}

Cq_value(20)






