#' Free throws attempted
#'
#' Finds most free throws in a year
#' @param df the data frame
#' @param year the specific year
#' @keywords free_throw
#' @importFrom magrittr %>%
#' @export
#' @examples
#' most_free_throw_attempted()



most_free_throw_attempted <- function(df, year) {
df %>%
  dplyr::filter(Year == year) %>%
  dplyr::arrange(desc(FTA)) %>%
  dplyr::select(Player, FTA, Age) %>%
  head(1)

}

