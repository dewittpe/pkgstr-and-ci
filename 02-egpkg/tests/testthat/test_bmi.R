test_that("BMI Numeric Tests",
          expect_that(round(bmi(73, 300, "in", "lbs"), 1),
                      equals(39.6))
          )
