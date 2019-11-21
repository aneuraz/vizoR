load("data-raw/AI_articles.RData")
library(pbapply)

find_non_ascii <- function(x) {
  any(grepl("I_WAS_NOT_ASCII", iconv(x, "latin1", "ASCII", sub="I_WAS_NOT_ASCII")))
}

contain_non_ascii <- pbsapply(ai_pubmed$abstract, find_non_ascii,USE.NAMES = FALSE)

ai_pubmed <- ai_pubmed[!contain_non_ascii,]

usethis::use_data(ai_pubmed, overwrite = TRUE)
