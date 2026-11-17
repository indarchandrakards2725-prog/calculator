# calculator

<!-- badges: start -->
[![R-CMD-check](https://img.shields.io/badge/R--CMD--check-passing-brightgreen)](https://github.com/indarchandrakards2725-prog/calculator)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
<!-- badges: end -->

A lightweight, robust R package providing essential arithmetic operations with strict input validation and division-by-zero protection.

## Overview

The `calculator` package provides straightforward and dependable implementations of the four core arithmetic operations:

- `add(a, b)`: Addition (\(a + b\))
- `subtract(a, b)`: Subtraction (\(a - b\))
- `multiply(a, b)`: Multiplication (\(a \times b\))
- `divide(a, b)`: Division (\(a / b\)) with zero-division error handling

All functions support both scalar and vector numeric inputs and validate input types.

---

## Installation

You can install the development version of `calculator` directly from GitHub:

```r
# Install devtools if not already installed
if (!requireNamespace("devtools", quietly = TRUE)) {
  install.packages("devtools")
}

# Install calculator from GitHub
devtools::install_github("indarchandrakards2725-prog/calculator")
```

---

## Usage Examples

```r
library(calculator)

# 1. Addition
add(10, 5)
#> [1] 15

# Vector addition
add(c(1, 2, 3), c(4, 5, 6))
#> [1] 5 7 9

# 2. Subtraction
subtract(10, 4)
#> [1] 6

# 3. Multiplication
multiply(6, 7)
#> [1] 42

# 4. Division
divide(10, 2)
#> [1] 5

divide(7, 2)
#> [1] 3.5

# 5. Error Handling: Division by Zero
tryCatch(
  divide(10, 0),
  error = function(e) message("Caught expected error: ", conditionMessage(e))
)
#> Caught expected error: Division by zero is not allowed.
```

---

## Running Tests

To run the unit test suite locally:

```r
devtools::test()
```

To run complete package checks:

```r
devtools::check()
```

---

## Package Structure

```text
calculator/
├── .gitignore
├── calculator.Rproj
├── DESCRIPTION
├── LICENSE
├── LICENSE.md
├── NAMESPACE
├── README.md
├── R/
│   └── calculator.R
├── man/
│   ├── add.Rd
│   ├── divide.Rd
│   ├── multiply.Rd
│   └── subtract.Rd
└── tests/
    ├── testthat.R
    └── testthat/
        └── test-calculator.R
```

---

## Author

- **Indar Chandrakar** (<indar.chandrakards2725@gmail.com>)
- GitHub: [@indarchandrakards2725-prog](https://github.com/indarchandrakards2725-prog)

## License

This package is licensed under the [MIT License](LICENSE).
