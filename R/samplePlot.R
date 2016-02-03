#' plot a sample
#'
#' go away
#'
#' @param data data frame
#' @param size numeric
#'
#' @return ggplot object
#' @export
#'
#' @importFrom ggplot2 qplot
#'
#' @examples
#' samplePlot(airquality, 10)
#'
samplePlot <- function(data, size) {

  dat <- sampleFromData(data, size)

  qplot(dat[,1], dat[,2])
}
