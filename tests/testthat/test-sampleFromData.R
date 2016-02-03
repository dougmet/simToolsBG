context("sampleFromData tests")

test_that("Correct output", {

  set.seed(10)
  df <- sampleFromData(airquality, size=10)

  expect_equal(nrow(df), 10)
  expect_is(df, "data.frame")

  expect_equal(df$Ozone,
               c(35L, 21L, 64L, NA, 14L, NA, NA,
                 NA, 16L, 64L))
})

test_that("Errors handled properly", {
  expect_error(sampleFromData(airquality, size="10"))
})

test_that("Matrix data stays matrix", {

  set.seed(12)
  mat <- matrix(rnorm(100), nrow=10)

  sMat <- sampleFromData(mat, size=5)
  #is.matrix(sMat)
  expect_is(sMat, "matrix")
})
