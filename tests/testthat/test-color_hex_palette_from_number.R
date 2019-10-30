test_that("color_hex_palette_from_number works", {
  pal <- color_hex_palette_from_number(5361)

  expect_identical(pal, c("#ffb3ba","#ffdfba","#ffffba","#baffc9","#bae1ff"))
})
