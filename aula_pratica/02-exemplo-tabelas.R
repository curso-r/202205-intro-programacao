# Pergunta: existe relação entre idade e número de irmãos/irmãs?


# Importação dos dados ----------------------------------------------------

bd <- data.frame(
  idade = c(32, 33, 27, 23, 26, 30, 25, 25, 29, 21, 37, 24, 37),
  num_irm = c(1, 1, 1, 1, 4, 1, 1, 1, 3, 2, 1, 1, 2)
)

# Análise descritiva ------------------------------------------------------

media_idade <- mean(bd$idade)

media_num_irm <- mean(bd$num_irm)

sd(bd$idade)
sd(bd$num_irm)

sd(bd$idade) / media_idade
sd(bd$num_irm) / media_num_irm

correlacao <- cor(bd$idade, bd$num_irm)

cor(bd)
cor(mtcars)

bd$idade[bd$num_irm == 1]

library(dplyr)

filter(bd, num_irm == 1)


# Conclusão ---------------------------------------------------------------

paste0(
  "Como a correlação entre as variáveis foi ",
  round(correlacao, 2),
  ", então acredimos que não haja relação entre as variáveis."
)

