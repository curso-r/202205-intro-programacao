# Pergunta: existe relação entre idade e número de irmãos/irmãs?


# Importação dos dados ----------------------------------------------------

idade <- c(32, 33, 27, 23, 26, 30, 25, 25, 29, 21, 37, 24, 37)

num_irm <- c(1, 1, 1, 1, 4, 1, 1, 1, 3, 2, 1, 1, 2)


# Análise descritiva ------------------------------------------------------

media_idade <- mean(idade)

media_num_irm <- mean(num_irm)

sd(idade)
sd(num_irm)

sd(idade) / media_idade
sd(num_irm) / media_num_irm

correlacao <- cor(idade, num_irm)

idade[num_irm == 1]
mean(idade[num_irm == 1])
mean(idade[num_irm == 2])
mean(idade[num_irm == 3])
mean(idade[num_irm == 4])


# Conclusão ---------------------------------------------------------------

paste0(
  "Como a correlação entre as variáveis foi ",
  round(correlacao, 2),
  ", então acredimos que não haja relação entre as variáveis."
)

