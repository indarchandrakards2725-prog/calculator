test_that("add() correctly adds numeric values", {
  expect_equal(add(2, 3), 5)
  expect_equal(add(-1, 1), 0)
  expect_equal(add(-5, -5), -10)
  expect_equal(add(0, 0), 0)
  expect_equal(add(1.5, 2.5), 4.0)
  expect_equal(add(c(1, 2), c(3, 4)), c(4, 6))
})

test_that("add() rejects non-numeric inputs", {
  expect_error(add("2", 3), "Both arguments 'a' and 'b' must be numeric.")
  expect_error(add(2, "3"), "Both arguments 'a' and 'b' must be numeric.")
  expect_error(add(TRUE, 3), "Both arguments 'a' and 'b' must be numeric.")
})

test_that("subtract() correctly subtracts numeric values", {
  expect_equal(subtract(10, 4), 6)
  expect_equal(subtract(4, 10), -6)
  expect_equal(subtract(-5, -5), 0)
  expect_equal(subtract(0, 5), -5)
  expect_equal(subtract(5.5, 1.5), 4.0)
  expect_equal(subtract(c(10, 20), c(3, 5)), c(7, 15))
})

test_that("subtract() rejects non-numeric inputs", {
  expect_error(subtract("10", 4), "Both arguments 'a' and 'b' must be numeric.")
  expect_error(subtract(10, "4"), "Both arguments 'a' and 'b' must be numeric.")
})

test_that("multiply() correctly multiplies numeric values", {
  expect_equal(multiply(3, 4), 12)
  expect_equal(multiply(-3, 4), -12)
  expect_equal(multiply(-3, -4), 12)
  expect_equal(multiply(100, 0), 0)
  expect_equal(multiply(2.5, 4), 10.0)
  expect_equal(multiply(c(2, 3), c(4, 5)), c(8, 15))
})

test_that("multiply() rejects non-numeric inputs", {
  expect_error(multiply("3", 4), "Both arguments 'a' and 'b' must be numeric.")
  expect_error(multiply(3, "4"), "Both arguments 'a' and 'b' must be numeric.")
})

test_that("divide() correctly divides numeric values", {
  expect_equal(divide(10, 2), 5)
  expect_equal(divide(7, 2), 3.5)
  expect_equal(divide(-10, 2), -5)
  expect_equal(divide(-10, -2), 5)
  expect_equal(divide(0, 5), 0)
  expect_equal(divide(c(10, 20), c(2, 4)), c(5, 5))
})

test_that("divide() raises proper error on division by zero", {
  expect_error(divide(10, 0), "Division by zero is not allowed.")
  expect_error(divide(0, 0), "Division by zero is not allowed.")
  expect_error(divide(c(10, 20), c(2, 0)), "Division by zero is not allowed.")
})

test_that("divide() rejects non-numeric inputs", {
  expect_error(divide("10", 2), "Both arguments 'a' and 'b' must be numeric.")
  expect_error(divide(10, "2"), "Both arguments 'a' and 'b' must be numeric.")
})
