test_that("get_SDA_pmgroupname works", {
  expect_equal(nrow(get_SDA_pmgroupname(areasymbols = c("CA077", "CA630"))), 292)
  expect_equal(nrow(get_SDA_pmgroupname(mukeys = c(461994, 461995))), 2)
})
