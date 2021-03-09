#' Oldest
#'
#' Oldest player in a year
#' @param df the data frame
#' @param year the specific year
#' @keywords oldest
#' @importFrom magrittr %>%
#' @export
#' @examples
#' oldest_stats()



oldest_stats <- function(df, year){
  data %>%
    dplyr::filter(Year == year) %>%
    dplyr::arrange(desc(Age)) %>%
    dplyr::select(Player, Age, PTS) %>%
    head(1)
}

