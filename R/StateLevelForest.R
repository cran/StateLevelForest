#' This dataset contains information on forest area (thousands of acres) in the United States by state, covering over a century. The data is presented for the years 2017, 2012, 2007, 1997, 1987, 1977, 1963, 1953, 1938, 1920, 1907, and 1630.
#'
#' @title 'StateLevelForest'
#'
#' @description State-Level Forest Area Data in the United States, collected by the U.S. Census Bureau and USFS, and aggregated by USFS in Oswalt et al. (2019).
#'
#' @format A data frame with the following columns:
#' \describe{
#'   \item{year}{Numeric: Year of the data record.}
#'   \item{state}{Character: Name of the state.}
#'   \item{forest_thousands_of_acres}{Numeric: Forest area in thousands of acres.}
#' }
#' @source Oswalt, S. N., Smith, W. B., Miles, P. D., & Pugh, S. A. (2019). Table 3. In Forest Resources of the United States, 2017: A Technical Document Supporting the Forest Service 2020 RPA Assessment (pp. 77-78). U.S. Department of Agriculture, Forest Service. \doi{10.2737/WO-GTR-97}
#' @references
#' Data transcribed from Oswalt et al. (2019). Estimates for 1630, 1907, and 1938 include forest area for regions that would become the 50 States within the current United States. Estimates for 2007 are adjusted for forest definition change to a minimum of 10% cover and removal of chaparral as a forest type. Data for 1909-1997 adjusted for removal of chaparral type and addition of historic west Texas and west Oklahoma unproductive forest. Data for 1630 were also from Kellogg (1909) as an estimate of the original forest area. These data are provided for general reference purposes only to convey the relative extent of the forest estate, in what is now the United States, at the time of European settlement. Note: Data may not add to totals because of rounding.
#'
#' @examples
#' data(StateLevelForest)
#' head(StateLevelForest)
"StateLevelForest"
