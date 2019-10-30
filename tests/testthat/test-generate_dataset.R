test_that("generate_dataset_uniform works for 1 group", {
  dt <- generate_dataset_uniform(
    dataset_size = 2,
    min_x = 0,
    max_x = 5,
    seed = 12)

  ref_dt <- data.frame(x= c(0.35, 4.09),
                       y= c(4.71, 1.35),
                       group = 'group1',
                       stringsAsFactors = FALSE)

  expect_equal(dt, ref_dt)

})

test_that("generate_dataset_uniform works more than 1 group", {

  dt <- generate_dataset_uniform(
    dataset_size = list(2,2),
    min_x = 0,
    max_x = 5,
    seed = 12)

  ref_dt <- data.frame(x= c(0.35, 4.09,0.85,0.17),
                       y= c(4.71, 1.35,0.89, 3.21),
                       group = c(rep('group1',2), rep('group2', 2)),
                       stringsAsFactors = FALSE)

  expect_equal(dt, ref_dt)

  dt <- generate_dataset_uniform(
    dataset_size = list(2,2),
    min_x = list(0, 0),
    max_x = list(5,5),
    seed = 12)

  expect_equal(dt, ref_dt)

})
