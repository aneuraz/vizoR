#' Populations of big US cities 1790-2010.
#'
#' A dataset containing the populations of big US cities based on US census
#' between 1790 and 2010.
#'
#' @format A data frame with 1898 rows and 6 variables:
#' \describe{
#'   \item{Rank}{the rank of the city for a given year}
#'   \item{City}{the name of the city}
#'   \item{State}{the state of the city}
#'   \item{Population}{the population of the city}
#'   \item{Region}{the region of the city among : Midwest, Northeast, South, West }
#'   \item{Year}{the year of the census}
#' }
#'
#'
"us_city_populations"

#' Populations of cities in France 1876-2015.
#'
#' A dataset containing the populations of all cities in France based on INSEE census
#' between 1876 and 2015.
#'
#' @format A data frame with 1027122 rows and 7 variables:
#' \describe{
#'   \item{code_geo}{geographic_code of the city}
#'   \item{region}{the region of the city}
#'   \item{dep}{the departement number of the city}
#'   \item{ville}{the name of the city}
#'   \item{annee}{the year of the census}
#'   \item{population}{the population of the city}
#'   \item{dep_libelle}{the name of the departement of the city}
#' }
#'
#' @source \url{https://www.insee.fr/fr/statistiques/fichier/3698339/base-pop-historiques-1876-2015.xls}
"base_pop"

#' Sentiweb Incidence Data file for flu (grippe)
#'
#' A dataset containing the incidences of Influenza-like illness by region in France
#' between 1984 and 2019.
#'
#' @format A data frame with 23764 rows and 9 variables:
#' \describe{
#'   \item{week}{ISO8601 Yearweek number as numeric (year*100 + week nubmer)}
#'   \item{inc}{Estimated incidence value for the time step, in the geographic level}
#'   \item{inc_low}{Lower bound of the estimated incidence 95% Confidence Interval}
#'   \item{inc_up}{Upper bound of the estimated incidence 95% Confidence Interval}
#'   \item{inc100}{Estimated rate incidence per 100,000 inhabitants}
#'   \item{inc100_low}{Lower bound of the estimated incidence 95% Confidence Interval}
#'   \item{inc100_up}{Upper bound of the estimated rate incidence 95% Confidence Interval}
#'   \item{geo_insee}{Identifier of the geographic area, from INSEE https://www.insee.fr}
#'   \item{geo_name}{Geographic label of the area, corresponding to INSEE code. This label is not an id and is only provided for human reading}
#' }
#'
#' @source \url{https://www.sentiweb.fr/datasets/incidence-RDD-3.csv}
"grippe"


#' Minard: cities
#'
#' A dataset containing the cities for the Minard dataviz.
#'
#' @format A data frame with 20 rows and 3 variables:
#' \describe{
#'   \item{long}{Longitude}
#'   \item{lat}{Latitude}
#'   \item{city}{City}
#' }
#'
#' @source \url{http://www.datavis.ca/gallery/minard/ggplot2/}
"minard_cities"

#' Minard: temps
#'
#' A dataset containing the temperatures for the Minard dataviz.
#'
#' @format A data frame with 9 rows and 5 variables:
#' \describe{
#'   \item{long}{Longitude}
#'   \item{temp}{Temperature in °C}
#'   \item{month}{Month}
#'   \item{day}{Day}
#'   \item{date}{Date}
#' }
#'
#' @source \url{http://www.datavis.ca/gallery/minard/ggplot2/}
"minard_temps"

#' Minard: troops
#'
#' A dataset containing the troops for the Minard dataviz.
#'
#' @format A data frame with 51 rows and 5 variables:
#' \describe{
#'   \item{long}{Longitude}
#'   \item{lat}{Latitude}
#'   \item{survivors}{Survivors}
#'   \item{direction}{Direction A = Aller, R = Retour}
#'   \item{group}{group}
#' }
#'
#' @source \url{http://www.datavis.ca/gallery/minard/ggplot2/}
"minard_troops"

#' Pubmed articles about AI until november 2019
#'
#' Pubmed articles about AI until november 2019
#'
#' @format A data frame with 101,000 rows and 28 variables:
#' \describe{
#'   \item{title}{Title}
#'   \item{year}{Year}
#'   \item{journal}{Journal}
#'   \item{pmid}{Pubmed ID}
#'   \item{keywords}{keywords}
#'   \item{authors}{authors}
#'   \item{abstract}{abstract}
#'   \item{NLMid}{NLMid}
#' }

"ai_pubmed"

