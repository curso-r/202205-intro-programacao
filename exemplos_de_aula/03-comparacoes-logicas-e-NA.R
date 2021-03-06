# Comparações lógicas ------------------------------------------------------

# Valores lógicos

class(TRUE)
class(FALSE)

# TRUE e FALSE são nomes reservados

TRUE <- 1

x <- 1

# Testes com resultado verdadeiro
x == 1
"a" == "a"

# Testes com resultado falso
x == 2
"a" == "b"

# Maior
x > 3
x > 0

# Maior ou igual
x > 1
x >= 1

# Menor
x < 3
x < 0

# Menor ou igual
x < 1
x <= 1

# Diferente
x != 1
x != 2

x %in% c(1, 2, 3)
"a" %in% c("b", "c")

## Operadores lógicos também podem ser usados com vetores

numeros <- c(4, 8, 15, 16, 23, 42)

# vetor de lógicos que compara os elementos de "numeros", um por um, com o número 20
numeros < 20

# vetor de lógicos que compara os elementos de "numeros", um por um, com o número 23
numeros == 23

## Comparações lógicas serão a base dos filtros!

numeros <- c(4, 8, 15, 16, 23, 42)

# seleciona apenas o primeiro elemento do vetor "numeros"
numeros[c(TRUE, FALSE, FALSE, FALSE, FALSE, FALSE)]

numeros[c(TRUE, TRUE, FALSE, FALSE, FALSE, TRUE)]

numeros[numeros > 20]
numeros[numeros < 30]
numeros[numeros %% 2 == 0]

# seleciona apenas aqueles elementos do vetor "numeros" que forem iguais a 15
numeros[numeros == 15]

# no dplyr, vamos fazer assim
library(readr)

dados_voos_jan <- read_csv2("dados/voos_de_janeiro.csv")

library(dplyr)

filter(dados_voos_jan, distancia > 100)

# Exercícios --------------------------------------------------------------

# 1. Escreva um código que devolva apenas os valores maiores
# ou iguais a 10 do vetor abaixo:

vetor <- c(4, 8, 10, 15, 16, 23, 42)

# vetor >= 10

vetor[vetor >= 10]

# Operadores lógicos ----------

## & - E - Para ser verdadeiro, os dois lados
# precisam resultar em TRUE

x <- 5
x >= 3 & x <= 7


y <- 2
y >= 3 & y <= 7

## | - OU - Para ser verdadeiro, apenas um dos
# lados precisa ser verdadeiro

y <- 2
y >= 3 | y <= 7

y <- 15
y <= -10 | y >= 10

y <- 1
y >= 3 | y == 0

## O mesmo acontece com vetores

x_vetor <- c(89, 36, 96, 10, 99, 39)
y_vetor <- c(53, 30, 15, 54, 34, 60)

x_vetor > 50 | y_vetor < 10
x_vetor <= 50 & y_vetor > 10

## ! - Negação - É o "contrário"

!TRUE

!FALSE


w <- 5
!(w < 4)
w >= 4 # é equivalente a esse teste

!(x_vetor > 50 | y_vetor < 10)

unique(dados_voos_jan$cauda)

filter(dados_voos_jan, !cauda %in% c("N14228", "N24211", "N619AA"))


# Valores especiais -------------------------------------------------------

# Existem valores reservados para representar dados faltantes,
# infinitos, e indefinições matemáticas.

NA   # (Not Available) significa dado faltante/indisponível.

NaN  # (Not a Number) representa indefinições matemáticas, como 0/0 e log(-1).
# Um NaN é um NA, mas a recíproca não é verdadeira.

Inf  # (Infinito) é um número muito grande ou o limite matemático, por exemplo,
# 1/0 e 10^310. Aceita sinal negativo -Inf.

NULL # representa a ausência de objeto (no R).

# Comparações lógicas

idade_ana <- 30
idade_beto <- NA
idade_carla <- NA

idade_ana == idade_beto

idade_beto == idade_carla

idade_beto == NA

5 == NA

is.na(idade_beto)
is.na(idade_ana)

# Use as funções is.na(), is.nan(), is.infinite() e is.null()
# para testar se um objeto é um desses valores.

x <- NA
is.na(x)

0 / 0 == NaN
is.nan(0 / 0)


idades <- c(15, 64, 31, NA, 59)
is.na(idades)

pos <- 1:length(idades)

idades[!is.na(idades)]
pos[!is.na(idades)]
pos[is.na(idades)]

is.nan(NaN)
is.infinite(10 ^ 309)
is.null(NULL)


# Dataframes e funções ------------

library(readr)

base_de_dados <- read_csv2("dados/voos_de_janeiro.csv")

# E se quisermos calcular coisas com a coluna atraso_chegada?

sum(base_de_dados$atraso_chegada, na.rm = TRUE)

# A coluna atraso_chegada possui NA, por isso a soma dela será NA!

# Verificando os NA:

is.na(base_de_dados$atraso_chegada) # retornará um vetor com TRUE e FALSE,
# sendo que TRUE representa a presença de NA.

sum(is.na(base_de_dados$atraso_chegada)) # Quantos NA tem na coluna?
# Assim somaremos quantos NA tem na coluna,
# pois cada TRUE (presença de NA) será contabilizado como 1.


# ... e se quisermos ignorar o NA?
# Algumas funções possuem um argumento para remover os NA:
# na.rm = TRUE

# Qual é a soma ....?
sum(base_de_dados$atraso_chegada, na.rm = TRUE)

# Menor valor encontrado: o menor número encontrado na coluna
min(base_de_dados$atraso_chegada, na.rm = TRUE)

# Maior valor encontrado: o maior número encontrado na coluna
max(base_de_dados$atraso_chegada, na.rm = TRUE)

# Média
mean(base_de_dados$atraso_chegada, na.rm = TRUE)

# Mediana
median(base_de_dados$atraso_chegada, na.rm = TRUE)

# Variância
var(base_de_dados$atraso_chegada, na.rm = TRUE)

# Desvio padrão
sd(base_de_dados$atraso_chegada, na.rm = TRUE)


# Exercícios ------------------------------------------
# 1. Calcule o valor mínimo e valor máximo da coluna "atraso_saida". O que
# esses valores significam?

min(base_de_dados$atraso_saida, na.rm = TRUE)
max(base_de_dados$atraso_saida, na.rm = TRUE) / 60

min(base_de_dados$atraso_saida, na.rm = TRUE)

atrasos <- base_de_dados$atraso_saida
atrasos[atrasos > 0]
min(atrasos[atrasos > 0], na.rm = TRUE)

min(atrasos[atrasos >= 0], na.rm = TRUE)

# voos que saem exatamente na hora
sum(atrasos == 0, na.rm = TRUE)
mean(atrasos == 0, na.rm = TRUE) * 100

# voos que saem quase na hora
sum(atrasos <= 10 & atrasos >= -10, na.rm = TRUE)
mean(atrasos <= 10 & atrasos >= -10, na.rm = TRUE) * 100

####

library(dplyr)

base_de_dados |>
  filter(atraso_saida > 0) |>
  summarise(atraso_min = min(atraso_saida, na.rm = TRUE))

