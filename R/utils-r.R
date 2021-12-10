
#' PARTIDAS BRASILEIRAO.
#'
#' Partidas do brasileirao de 2003 a 2020.
#'
#' @format As variaveis da base sao
#' \describe{
#'   \item{Temporada}{Descrição da coluna 1}
#'   \item{Data}{Descrição da coluna 2}
#'   \item{time_casa}{Descrição da coluna 2}
#'   \item{gols}{Descrição da coluna 2}
#'   ...
#' }
#' @source "https://github.com/williamorim/brasileirao"
"partidas_brasileirao"


utils::globalVariables(c("temporada", "quem_ganhou","n_vitorias"))
