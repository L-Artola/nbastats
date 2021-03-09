#' A Correlation Function
#'
#' Creates a correlation matrix of df
#' @param df the data frame
#' @param year the specific year
#' @keywords corr_plot
#' @importFrom magrittr %>%
#' @export
#' @examples
#' cor_plot()


cor_plot <- function(df, year){
data_n <- dplyr::select_if(df, is.numeric)
data_n %>%
  dplyr::filter(Year == year) %>%
  cor()

}

