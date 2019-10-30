test_that("color_hex_palette_from_number works", {
  pal <- color_hex_palette_from_number(5361)

  expect_identical(pal, c("#ffb3ba","#ffdfba","#ffffba","#baffc9","#bae1ff"))
})


test_that("color_hex_palette_from_name works", {
  pal <- color_hex_palette_from_name("Cook")
  expect_identical(pal, c("#236e23","#1b1b1b","#d5881c","#ef3f3f","#e8e8e8"))
})
