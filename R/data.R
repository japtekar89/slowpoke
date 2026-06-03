#'Load bundled Pokémon TCG dataset
#'
#' @return A tibble containing Pokémon TCG data.
#' @importFrom arrow read_csv_arrow
#' @export
load_data <- function() {
 arrow::read_csv_arrow(
   "https://www.dropbox.com/scl/fi/tnl4wcmgduu3bnmmllz2u/pokemon_cards.csv?rlkey=h7evg3hr4ckzqrxrzoy458ojs&st=uzrlktbc&dl=1")
}
