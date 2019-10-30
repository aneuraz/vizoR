#' Generate a uniform dataset with 2 groups
#'
#' @param dataset_size integer or list(integer). number of observations
#' @param min_x number or list(integer). minimum on the axes
#' @param max_x number or list(integer). maximum on the axes
#' @param seed number. seed for the random process
#'
#' @return data.frame
#' @export
#'
#' @examples
#' # a dataset with 1 group
#' generate_dataset_uniform(dataset_size = 20, min_x = 0, max_x = 5)
#'
#' # a dataset with 3 groups
#' generate_dataset_uniform(list(20,2, 4), min_x = list(0, 5, 2), max_x=list(5,10, 5))
#'
generate_dataset_uniform <- function(
  dataset_size = list(20, 2),
  min_x = 0,
  max_x = 5,
  #outliers = 2,
  seed = NULL) {

  set.seed(seed)

  if (class(dataset_size) == 'numeric' ) {
    dataset_size = list(dataset_size)
  }

  if (length(min_x) < length(dataset_size )) {
    as.list(rep(min_x), length(dataset_size))
  }

  if (length(max_x) < length(dataset_size )) {
    as.list(rep(max_x), length(dataset_size))
  }


  res <- lapply(1:length(dataset_size), function(i) {
    draw_uniform_sample(size=dataset_size[[i]],
                        group = i,
                        min = min_x[[i]],
                        max = max_x[[i]]
                        )
  })

  dplyr::bind_rows(res)

}

#' Draw Uniform Sample
#'
#' draws a uniform sample of size `size`
#'
#' @param size number. size of the sample
#' @param group number. number of the group (default = 1)
#' @param min number. minimum of the uniform distribution
#' @param max number. maximum of the uniform distribution
#'
#' @return data.frame
#' @export
#'
#' @examples
#' draw_uniform_sample(size = 20, min = 0, max = 5, group = 1)
#'
draw_uniform_sample <- function(
  size,
  min,
  max,
  group = 1
) {

  group = glue::glue("group{group}")

  data.frame(
    x = round(stats::runif(size, min = min, max = max), 2),
    y = round(stats::runif(size, min = min, max = max), 2),
    group = rep(group,size),
    stringsAsFactors = F
  )
}
