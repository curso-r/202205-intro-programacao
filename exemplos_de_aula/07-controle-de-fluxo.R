# Carregando pacotes ------------------------------------------------------

library(readr)

# Carregando os dados -----------------------------------------------------

base_de_dados <- read_csv2("dados/voos_de_janeiro.csv")

# Controle de fluxo -------------------------------------------------------

# É muito comum usarmos operadores lógicos para fazer os nossos códigos
# tomarem decisões.
# Para isso, utilizamos os controladores de fluxo.

# if: faz uma ação se a condição for atendida

# estrutura:
# if (CONDICAO) {
#   ACAO
# }


x <- 2

if(x == 1) {
  Sys.time()
}

# if/else: faz uma ação se as condições anteriores não forem atendidas.

x <- -1

if(x < 0){
  "negativo"
} else {
  "não negativo"
}

# else-if: generaliza o comportamento do if

if(x < 0) {
  "negativo"
} else if(x == 0) {
  "neutro"
} else {
  "positivo"
}

# Mais um exemplo de if! Contagem regressiva para o carnaval!

hoje <- Sys.Date()
carnaval <- as.Date("2022-06-16")

if(hoje < carnaval){

  dias_para_carnaval <- as.numeric(carnaval - hoje)
  paste("Faltam", dias_para_carnaval, "dias para o terceiro carnaval de 2022!")

}  else if(hoje == carnaval){

  paste("Hoje é carnaval!")

} else {

  paste("O carnaval de 2022 já passou... agora só ano que vem!")

}

# Exercícios --------------------------------------------------------------

# 1. Imagine que você é uma pessoa professora, e quer usar o R para saber
# se as pessoas alunas foram aprovadas ou não na disciplina,
# segundo a nota final.
# Usando o if, preencha os campos com ... abaixo para que o if retorne:
# "aprovada" se tiver nota maior  ou igual a 5,
# "reprovada" se tiver nota menor que 3,
# e "recuperação" se tiver nota maior ou igual que 3 e menor que 5.


nota <- 3.5

if(nota >= 5){

  print("aprovada")

} else if(nota < 3) {

  print("reprovada")

} else if (nota >= 3 & nota < 5) {

  print("recuperação")
}

# 2. Continuando o exercício anterior:
# Depois de preencher os campos, teste o código com diferentes notas!
# O que o código retorna é coerente com a nota que você passou?


# -------------------------------------------------------------------------

# o if não é vetorizado

if (base_de_dados$atraso_saida > 0) {
  "atrasou"
}
# ele usa o resultado apenas do primeiro teste do vetor

# criando colunas numa base de dados


## jeito r base

base_de_dados$atraso_saida
ifelse(base_de_dados$atraso_saida > 0, "atrasou", "não atrasou")

base_de_dados$atraso_saida_cat <- ifelse(base_de_dados$atraso_saida > 0, "atrasou", "não atrasou")

base_de_dados[, c("atraso_saida", "atraso_saida_cat")] |> View()

## jeito dplyr

library(dplyr)

base_de_dados |>
  mutate(
    atraso_saida_cat = ifelse(atraso_saida > 0, "atrasou", "não atrasou")
  ) |>
  select(atraso_saida, atraso_saida_cat) |>
  View()


# Voltando a falar sobre tabelas!  ------------------------------------

# Vamos carregar mais uma base! Voos de fevereiro

base_de_dados_fev <- read_csv2("dados/voos_de_fevereiro.csv")

head(base_de_dados_fev)


# Queremos juntar as bases com dados de janeiro em fevereiro, e uma única base.
# a base contém as mesmas colunas!
# usar a funcao rbind() (de row bind)

base_jan_fev <- rbind(base_de_dados, base_de_dados_fev)

# E se eu quiser adicionar uma nova coluna?
# cbind()   (de column bind)

nome_mes <- "janeiro"
cbind(base_de_dados, nome_mes)
