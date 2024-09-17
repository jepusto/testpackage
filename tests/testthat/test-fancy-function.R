test_that("fancy_function() works.", {
  d1 <- internal_fun(data = mtcars, cyl ~ disp)
  d2 <- fancy_function(data = mtcars, cyl ~ disp)

  expect_identical(d1, d2)
})
