# INTRODUÇÃO AO R

# o hashtag (#) serve para escrever comentários
# os comentários não são executados pelo R

# selecione um bloco de código e clique
# ctrl + shift + c para comentar tudo o que está selecionado

# Rodando códigos (o R como calculadora) ----------------------------------

# ATALHO para rodar o código: CTRL + ENTER
# Mesmo atalho no Mac: Command + ENTER


# adição
1 + 1 + 1
1 - 1
1 * 2

# subtração
4 - 2

# multiplicação
2 * 3

# divisão
5 / 3

# potência
4 ^ 2

# resto da divisão
6 %% 3

# Criando objetos/variáveis -----------------------------------------------

# Salvando o valor 1 no objeto "obj"
obj <- 1
obj

# Também dizemos 'guardando as saídas'
soma <- 2 + 2
soma

# salvar saída versus apenas executar
33 / 11
resultado <- 33 / 11

# atualizar um objeto
resultado <- resultado * 5



# ATALHO para a <- : ALT - (alt menos)
# Mesmo atalho no Mac: Option - (Option menos)

# O R difencia minúscula de maiúscula!

a <- 5
A <- 42

a
A

# Os nomes devem começar com uma letra.
# Podem conter letras, números, _ e .

# Permitido

x <- 1
x1 <- 2
objeto <- 3
meu_objeto <- 4
meu.objeto <- 5

# Não permitido

.x <- 1
1x <- 1
_objeto <- 2
meu-objeto <- 3

# Estilo de nomes

eu_uso_snake_case
outrasPessoasUsamCamelCase
algumas.pessoas.usam.pontos
E_algumasPoucas.Pessoas_RENUNCIAMconvenções


# Exercícios --------------------------------------------------------------

# 1. Multiplique a sua idade por 12 e salve em um objeto chamado "meses".

meses <- 32 * 12
meses

##############################
# Use aspas para criar texto #
##############################

a <- 10

# O objeto a, sem aspas
a

# A letra (texto) a, com aspas
"a"
"10"

# Numéricos (numeric)

a <- 10

class(a)

# Caracteres (character, strings)

obj <- "a"
obj2 <- "masculino"

class(obj)

obj3 <- a
obj3

a <- 11

# note que na aba "variáveis" os formatos das variáveis "obj" e "a"
# são diferentes

# Valores lógicos/booleanos (verdadeiro ou falso)

TRUE <- 33
FALSE <- 32

T <- "a"
F <- 33

class(TRUE)
class(FALSE)

# removendo valores do environment

rm(a)

# Vetores -----------------------------------------------------------------

# Vetores são conjuntos de valores

vetor1 <- c(1, 4, 3, 10)
vetor2 <- c("a", "b", "z")

vetor1
vetor2

letters

# Uma maneira fácil de criar um vetor com uma sequência de números
# é utilizar o operador `:`

# Vetor de 1 a 10
c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)
1:10

# Vetor de 10 a 1
10:1

# Vetor de -3 a 3
-3:3

1:1000

# Vetores são conjuntos indexado de valores
# Quando dizemos que vetores são conjuntos indexados,
# isso quer dizer que cada valor dentro de um vetor tem uma posição

vetor <- c("a", "b", "c", "d")

vetor[1]
vetor[2]
vetor[3]
vetor[4]

vetor[5] # retorna NA, falaremos mais adiante o que é

vetor[c(2, 3)]
vetor[c(1, 2, 4)]

# Você também pode selecionar elementos de um vetor por exclusão

vetor[-1]
vetor[-c(2, 3)]

vetor <- vetor[-1]
vetor

# Um vetor só pode guardar um tipo de objeto e ele terá sempre
# a mesma classe dos objetos que guarda

vetor1 <- c(1, 5, 3,-10)
vetor2 <- c("a", "b", "c")

# Se tentarmos misturar duas classes, o R vai apresentar o
# comportamento conhecido como coerção

1
2
3,3
2,1
3
3.4
3
4,3

vetor <- c(1, 2, "a")

vetor

c(TRUE, "a")
c(TRUE, 10, FALSE)

#número inteiro
10L
class(10L)

# menos prodominante -- logico < inteiros < numericos < character -- mais predominante

# Naturalmente, podemos fazer operações matemáticas com vetores

vetor <- c(0, 5, 20,-3)

vetor + 1
vetor - 1
vetor / 2
vetor * 10

# Você também pode fazer operações que envolvem mais de um vetor:

vetor1 <- c(1, 2, 3)

vetor2 <- c(10, 20, 30)

vetor1  + vetor2

# As coisas ficam um pouco confusas quando os dois
# vetores não tem o mesmo tamanho

vetor1 <- c(1, 2)
vetor2 <- c(10, 20, 30, 40)

vetor1 + vetor2

# Esse comportamento é chamado de reciclagem.

# As coisas ficam um pouco mais confusas quando os comprimentos
# dos vetores não são múltiplos

vetor1 <- c(1, 2, 3)
vetor2 <- c(10, 20, 30, 40, 50)

vetor1 + vetor2

# Exercícios --------------------------------------------------------------

# a. Guarde em um objeto uma sequência de números que comece
# em 0 e termine em 5.

obj <- 0:5
obj2 <- c(0, 1, 2, 3, 4, 5)

# b. Use subsetting para fazer o R devolver o primeiro número dessa
# sequência.
# Em seguida, faça o R devolver o último número da sequência.

obj[1]
obj[6]

# c. Multiplique todos os valores do vetor por -1. Guarde o resultado em
# um novo objeto chamado 'versao_negativa'.

versao_negativa <- obj * -1
versao_negativa

# Funções -----------------------------------------------------------------

# Funções são nomes que guardam um código de R. Esse código é
# avaliado quando rodamos uma função.

# a função `c()` foi utilizada para criar vetores;

sum(c(1, 2, 3))

# Onde descobrir mais sobre uma função
# mudar exemplo para outra função

?seq
help(seq)

seq(from = 1, to = 10, by = 2)

# se você não especificar, precisa seguir a ordem dos argumentos
seq(1, 10, 2)

# se você especificar, não precisa seguir a ordem dos argumentos
seq(to = 10, from = 1, by = 2)

sum(1, 2, 3, 4, 5)

mean(x = c(1, 2, 3))

# Argumentos

# Argumentos são sempre separados por vírgulas

c(1, 3, 5)

# Pensando em uma receita do bolo:
# os ingredientes são os argumentos
# a receita é o código que a função executa (usando os argumentos/ingredientes)
# e o bolo é o resultado da função


# A ordem é importante se você não nomear os argumentos

seq(from = 4, to = 10, by = 2)
seq(4, 10, 2)

seq(by = 2, to = 10, from = 4)
seq(2, 10, 4)


vetor_exemplos <- c(1, 5, 3.4, 7.23, 2.1, 3.8)

# Exemplo 1 sum/mean - Como calcular uma média/soma

sum(vetor_exemplos)
mean(vetor_exemplos)

# Exemplo 2 median - Como calcular uma mediana

median(vetor_exemplos)

# Exemplo 3 var - Como calcular uma variância

var(vetor_exemplos)

# Exemplo 4 - Como calcular um desvio-padrão

sd(vetor_exemplos)

# Exemplo 5 - Como calcular o máximo de um vetor

max(vetor_exemplos)

# Exemplo 6 - Como calcular o mínimo de um vetor

min(vetor_exemplos)

# Exemplo 7 - Como arrendondar valores

round(vetor_exemplos, digits = 1)

# Exemplo 8 - Descobrir o tamanho do vetor: quantos elementos ele tem?

length(vetor_exemplos)

# Funções para mexer com textos

# Exemplo 9 - Função paste

paste("a", "b", sep = "-") # cola os elementos, separando com um espaço

paste0("a", "b") # cola os elementos sem separar!
paste0("b", "a")

resultado_colado <- paste0(obj, "a")
resultado_colado

paste0(letters, 1:length(letters))

nome <- c("William", "Gustavo", "Tereza", "Beatriz")

sobrenome <- c("Amorim", "Hen", "Lacerda", "Akemi")

paste(nome, sobrenome)

# Recapitulando

# 1 - O R propriamente dito é aquela caixinha onde se lê "Console" escrito
# em cima

# 2 - Você pode escrever comeando direto nele, do lado daquele sinal de
# maior: ">"

# É muito comum você fazer contas direto no Console, por exemplo.
# Nós aprendemos quepraticamente todas as operações aritméticas estão no R

# 5+1, 4+2, 1-1, 1/1 etc

# 3 - O jeito mais comum de programar em R é escrevendo vários comandos em
# um arquivo de texto e executando todos eles de uma vez, manualmente ou
# talvez até programando o computador para fazer isso.

# 4 - Aprendemos vários exemplos de comandos que podemos usar no R:

# - criar objetos
# - criar vetores
# - recortar pedaços de vetores
# - várias funções para transformar vetores numéricos

# Vamos agora ao nosso primeiro exemplo de script completo!

vetor <- c(2.1, 2.4999, 2.5, 2.50001, 2.6, 2.9)

a <- c(1, 1.5, 1.51, 2.5, 3, 0.5, 3.5)
round(a)

round(vetor)
ceiling(vetor)
floor(vetor)
trunc(vetor)
signif(vetor, digits = 5)

vetor2 <- c(1, 10, -1, 100, 33, 52)
vetor3 <- c("banana", "uva", "maçã", "pera", "mamão")

sort(vetor2)
sort(vetor3)
