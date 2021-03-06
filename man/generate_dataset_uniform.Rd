% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/generate_dataset.R
\name{generate_dataset_uniform}
\alias{generate_dataset_uniform}
\title{Generate a uniform dataset with 2 groups}
\usage{
generate_dataset_uniform(
  dataset_size = list(20, 2),
  min_x = 0,
  max_x = 5,
  seed = NULL
)
}
\arguments{
\item{dataset_size}{integer or list(integer). number of observations}

\item{min_x}{number or list(integer). minimum on the axes}

\item{max_x}{number or list(integer). maximum on the axes}

\item{seed}{number. seed for the random process}
}
\value{
data.frame
}
\description{
Generate a uniform dataset with 2 groups
}
\examples{
# a dataset with 1 group
generate_dataset_uniform(dataset_size = 20, min_x = 0, max_x = 5)

# a dataset with 3 groups
generate_dataset_uniform(list(20,2, 4), min_x = list(0, 5, 2), max_x=list(5,10, 5))

}
