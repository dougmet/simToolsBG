context("naCounter Check")

test_that("Correct result", {
  expect_equal(naCounter(airquality),
               structure(c(37L, 7L, 0L, 0L, 0L, 0L),
                         .Names = c("Ozone", "Solar.R","Wind",
                                    "Temp", "Month", "Day"))
               )
})
