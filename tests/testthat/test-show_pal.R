test_that("show_pal outputs a plot", {
  pal <- c("#ffb3ba","#ffdfba","#ffffba","#baffc9","#bae1ff")
  p  <- show_pal(pal)

  expect_identical(class(p), c("gg", "ggplot"))
})
