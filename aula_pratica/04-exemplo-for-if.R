library(readr)

vetor_de_arquivos <- list.files(
  path = "dados/",
  full.names = TRUE,
  pattern = "csv$"
)

for (arq in vetor_de_arquivos) {
  if (arq == vetor_de_arquivos[1]) {
    dados <- read_csv2(arq)
  } else {
    tab <- read_csv2(arq)
    dados <- rbind(dados, tab)
  }
}


for (arq in vetor_de_arquivos) {
  if (arq == vetor_de_arquivos[1]) {
    dados <- read_csv2(arq)
  } else {
    dados <- rbind(dados, read_csv2(arq))
  }
}

# usando o pacote purrr (tidyverse)
vetor_de_arquivos <- list.files(path = "dados/", full.names = TRUE, pattern = "csv$")
dados <- purrr::map_dfr(vetor_de_arquivos, read_csv2)

readr::write_csv(dados, "base_empilhada.csv")


# Lendo várias bases diferentes
lista_dados <- purrr::map(vetor_de_arquivos, read_csv2)
lista_dados[[2]]


# exemplo join
dados_idh
dados_rdpc

base_completa <- dplyr::left_join(dados_idh, dados_rdpc, by = "id")
