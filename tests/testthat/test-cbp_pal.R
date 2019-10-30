test_that("cbp_pal works", {

  cbp1 <- c("#999999", "#E69F00", "#56B4E9", "#009E73",
            "#F0E442", "#0072B2", "#D55E00", "#CC79A7")
  cbp2 <- c("#000000", "#E69F00", "#56B4E9", "#009E73",
            "#F0E442", "#0072B2", "#D55E00", "#CC79A7")

  pal1 <- cbp_pal(black = FALSE)(8)

  pal2 <- cbp_pal(black = TRUE)(8)

  expect_equivalent(cbp1, pal1)
  expect_equivalent(cbp2, pal2)

})
