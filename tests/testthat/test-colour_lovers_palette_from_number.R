test_that("colour_lovers_palette_from_number works", {
  pal <- colour_lovers_palette_from_number("292482/Terra")

  expect_equivalent(pal, c("#E8DDCB","#CDB380","#036564","#033649","#031634"))
})
