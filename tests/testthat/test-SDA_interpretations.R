target_areas <-  c("CA649", "CA630")
target_area_rows <- 231

target_mukeys <- c(463263, 463264)

test_that("SDA interpretations (dominant component) works", {
  res <- get_SDA_interpretation("FOR - Potential Seedling Mortality",
                                method = "Dominant Component", areasymbols = target_areas)
  expect_equal(nrow(res), target_area_rows)

  res <- get_SDA_interpretation("FOR - Potential Seedling Mortality",
                                method = "Dominant Component", mukeys = target_mukeys)
  expect_equal(sort(res$MUKEY), sort(target_mukeys))
})

test_that("SDA interpretations (dominant condition) works", {
  res <- get_SDA_interpretation("FOR - Potential Seedling Mortality",
                                method = "Dominant Condition", areasymbols = target_areas)
  expect_equal(nrow(res), target_area_rows)


  res <- get_SDA_interpretation("FOR - Potential Seedling Mortality",
                                method = "Dominant Condition", mukeys = target_mukeys)
  expect_equal(sort(res$MUKEY), sort(target_mukeys))
})

test_that("SDA interpretations (weighted average) works", {
  res <- get_SDA_interpretation("FOR - Potential Seedling Mortality",
                                method = "Weighted Average", areasymbols = target_areas)
  expect_equal(nrow(res), target_area_rows)


  res <- get_SDA_interpretation("FOR - Potential Seedling Mortality",
                                method = "Weighted Average", mukeys = target_mukeys)
  expect_equal(sort(res$MUKEY), sort(target_mukeys))
})
