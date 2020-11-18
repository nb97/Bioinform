


sqrt_function <- function(data, na.rm = TRUE, verbose = TRUE) {
  if (verbose) message("Finding SQRT...")
  mutate(data, across(where(is.numeric), ~
                        sqrt(.x))
  )}
