

#' FUNCAO ENCONTRAR PIOR ANO DE UM DETERMINADO TIME
#'
#' A funcao tem como objetivo encontrar o pior ano de um determinado time do brasileirao
#'
#' @param timeaux time do brasileirão
#'
#'@return Retorna uma tibble
#' @export
#'
#' @examples encontrar_pior_ano_time("Botafogo")
encontrar_pior_ano_time <- function(timeaux) {
  "https://git.io/JOqUN" %>%
    readr::read_csv2() %>%
    dplyr::group_by(temporada, quem_ganhou) %>%
    dplyr::filter(quem_ganhou != "Empate", quem_ganhou %in% timeaux) %>%
    dplyr::count(quem_ganhou, sort = TRUE, name = "n_vitorias") %>%
    dplyr::ungroup() %>%
    dplyr::filter(n_vitorias == min(n_vitorias)) %>%
    dplyr::rename("time" = quem_ganhou)
}




partidas_brasileirao <- readr::read_csv2("https://git.io/JOqUN")
usethis::use_data(partidas_brasileirao,overwrite = TRUE)
