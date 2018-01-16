#' Body Mass Index
#'
#' Given weight and height, return the body mass index
#'
#' @param height height in inches
#' @param weight weight in lbs
#'
#' @return a numeric vector of bmi
#'
#' @examples
#' # The bmi of a six foot one inch tall, three hundred pound individual is
#' bmi(height = 6 * 12 + 1, 300)
#'
#' @export
bmi <- function(height, weight) {
  weight / height**2 * 703
}
