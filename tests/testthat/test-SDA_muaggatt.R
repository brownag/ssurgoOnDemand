test_that("get_SDA_muaggatt works", {
  expect_equal(nrow(get_SDA_muaggatt(areasymbols = c("CA077", "CA630"))), 313)
  expect_equal(nrow(get_SDA_muaggatt(mukeys = c(461994, 461995))), 2)
})

