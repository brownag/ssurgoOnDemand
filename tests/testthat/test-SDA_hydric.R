test_that("get_SDA_hydric works", {
  # by areasymbol
  expect_equal(nrow(get_SDA_hydric(areasymbols = c("CA077", "CA630"))), 313)

  # by mukey
  expect_equal(nrow(get_SDA_hydric(mukeys = c(461994, 461995))), 2)
})
