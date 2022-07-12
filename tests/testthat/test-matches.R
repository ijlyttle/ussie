test_that("uss_make_matches() works", {

  local_warn_partial_match()

  expect_error(uss_make_matches(3, "italy"), class = "ussie_error_data")
  expect_error(uss_make_matches(mtcars, "italy"), class = "ussie_error_cols")

  italy <- uss_make_matches(engsoccerdata::italy, "Italy")

  # is this a tibble?
  expect_true(tibble::is_tibble(italy))

  # has the right names?
  expect_named(
    italy,
    c("country", "tier", "season", "date", "home", "visitor", "goals_home",
      "goals_visitor")
  )

  # is the country correct?
  expect_identical(unique(italy$country), "Italy")

  # snapshot
  expect_snapshot(dplyr::glimpse(italy))

})

