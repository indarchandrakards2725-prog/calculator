#' Add two numbers
#'
#' Calculates the sum of two numeric values.
#'
#' @param a A numeric value or vector.
#' @param b A numeric value or vector.
#'
#' @return The sum of \code{a} and \code{b}.
#'
#' @examples
#' add(2, 3)
#' add(-1, 5)
#'
#' @export
add <- function(a, b) {
  if (!is.numeric(a) || !is.numeric(b)) {
    stop("Both arguments 'a' and 'b' must be numeric.")
  }
  a + b
}

#' Subtract two numbers
#'
#' Calculates the difference between two numeric values.
#'
#' @param a A numeric value or vector.
#' @param b A numeric value or vector to subtract from \code{a}.
#'
#' @return The difference of \code{a} minus \code{b}.
#'
#' @examples
#' subtract(5, 3)
#' subtract(2, 5)
#'
#' @export
subtract <- function(a, b) {
  if (!is.numeric(a) || !is.numeric(b)) {
    stop("Both arguments 'a' and 'b' must be numeric.")
  }
  a - b
}

#' Multiply two numbers
#'
#' Calculates the product of two numeric values.
#'
#' @param a A numeric value or vector.
#' @param b A numeric value or vector.
#'
#' @return The product of \code{a} and \code{b}.
#'
#' @examples
#' multiply(3, 4)
#' multiply(-2, 6)
#'
#' @export
multiply <- function(a, b) {
  if (!is.numeric(a) || !is.numeric(b)) {
    stop("Both arguments 'a' and 'b' must be numeric.")
  }
  a * b
}

#' Divide two numbers
#'
#' Calculates the quotient of two numeric values with division by zero protection.
#'
#' @param a A numeric value or vector (numerator).
#' @param b A numeric value or vector (denominator).
#'
#' @return The quotient of \code{a} divided by \code{b}.
#'
#' @examples
#' divide(10, 2)
#' divide(7, 2)
#'
#' @export
divide <- function(a, b) {
  if (!is.numeric(a) || !is.numeric(b)) {
    stop("Both arguments 'a' and 'b' must be numeric.")
  }
  if (any(b == 0)) {
    stop("Division by zero is not allowed.")
  }
  a / b
}
