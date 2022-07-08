test_that("uss_make_matches() works", {

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

})

