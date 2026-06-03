#' Find Pokémon by name pattern
#'
#' @param poke_name A character string to match against Pokémon names.
#' @return A tibble of matching Pokémon card names and their flavor text.
#' @importFrom dplyr filter select distinct
#' @importFrom stringr str_detect str_to_title
#' @export
find_poke <- function(poke_name) {
  dat<- load_data()
  results<- lapply(poke_names, find_poke, dat=dat)
  dplyr::bind_rows(results)
}

#' Find multiple Pokémon by name patterns
#'
#' @param poke_names A character vector of name patterns.
#' @return A tibble of matching Pokémon card names and flavor text.
#' @export
find_many_pokes <- function(poke_names) {
  results <- lapply(poke_names, find_poke)
  dplyr::bind_rows(results)

}
