#' Body Mass Index
#'
#' Given weight and height, return the body mass index
#'
#' The units supported for height are:
#' \describe{
#' \item{"in"}{for inches}
#' \item{"cm"}{for centemeters}
#' \item{"feet"}{for feet, a decimal number, e.g., 5.5 for five and one half
#' feet, or five foot six inches.}
#' \item{"m"}{for meters}
#' }
#'
#' The units supported for weight are:
#' \describe{
#' \item{"lbs"}{for pounds}
#' \item{"kg"}{for kilograms}
#' }
#'
#' @param height height of the subject(s)
#' @param weight weight of the subject(s)
#' @param hunits a character string for the measurement unit of height, see
#' details.
#' @param wunits a character string for the measurement unit of weight, see
#' details.
#'
#' @return a numeric vector of bmi
#'
#' @examples
#' # The bmi of a six foot one inch tall, three hundred pound individual is
#' bmi(height = 6 * 12 + 1, weight = 300, hunits = "in", wunits = "lbs")
#'
#' @export
bmi <- function(height, weight, hunits, wunits) {
  h_meters <-
    switch(hunits,
           "in" = height * 0.0254,
           "cm" = height * 100,
           "feet" = height / 12 * 0.0254,
           "m" = height)

  w_kg <-
    switch(wunits,
           "lbs" = weight * 0.453592,
           "kg"  = weight)

  w_kg / h_meters ** 2

}
