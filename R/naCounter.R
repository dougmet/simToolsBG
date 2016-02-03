
#' Count NAs in a vector
#'
#' @param x A vector
#'
#' @return Number of NAs
#'
#' @examples
#' \dontrun{
#'   sumNa(airquality$Ozone)
#' }
sumNa <- function(x) {
  sum(is.na(x))
}


#' Count all NAs in a data set
#'
#' @param data A data.frame or matrix
#'
#' @return Vector of NA counts
#' @export
#'
#' @examples
#' naCounter(airquality)
#'
naCounter <- function(data) {
  apply(data, 2, sumNa)
}
