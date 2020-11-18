#' Square root numeric values
#'
#' @param data Numeric intergers
#' @param na.rm Removing NA;s
#' @param verbose returnign a mesage
#'
#' @return
#' A data frame with no NAs and all values squared.
#' @export
#'
#' @examples
#' sqrt_function <- function(data, na.rm = TRUE, verbose = TRUE) {
#'if (verbose) message("Finding SQRT...")
#'mutate(data, across(where(is.numeric), ~
#'                      sqrt(.x))
#')}

#'tibble1 <- sqrt_function(gapminder)
#'tibble2 <- sqrt_function(penguins)


#Function:

