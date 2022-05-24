# Exemplo Source

listar_arquivos_R <- function(caminho = getwd()){
  list.files(caminho, full.names = TRUE, recursive = TRUE, pattern = "[.]R$")
}



variavel_exemplo <- 10
