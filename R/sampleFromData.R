
#' Sample from a data frame
#'
#' This function has been designed to sample
#' from the rows of a two dimensional data set,
#' returning all columns of sampled rows.
#'
#' @param data A data frame or matrix from which rows are
#' to be sampled
#' @param size Numeric. Number of rows to return
#' @param replace Logical. Sample with replacement? TRUE by default.
#' @param ... Extra options passed to \code{\link{sample}} function.
#'
#' @author Doug Ashton
#'
#' @return A data set of the same type as input with \code{size} rows.
#' @export
#'
#' @examples
#' sampleFromData(airquality, size=10)
sampleFromData <- function(data, size, replace=TRUE, ...) {

  if(!is.numeric(size))
    stop("size must be a numeric value")

  lengthData <- nrow(data)

  samples <- sample(seq_len(lengthData), size=size,
                    replace=replace, ...)

  invisible(data[samples, ])
}
