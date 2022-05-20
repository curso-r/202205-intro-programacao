library(readr)

vetor_de_arquivos <- list.files(
  path = "dados/",
  full.names = TRUE,
  pattern = "csv$"
)

dados <- read_csv2(vetor_de_arquivos[1])

for (arq in vetor_de_arquivos[-1]) {
  tab <- read_csv2(arq)
  dados <- rbind(dados, tab)
}

rbind(mtcars, mtcars[,-1])
bind_rows(mtcars, mtcars[,-1]) |> View()
