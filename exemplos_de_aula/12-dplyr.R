library(dplyr)

# seleciona colunas
select(mtcars, mpg, cyl)

# ordena as linhas conforme uma coluna (sorting do Excel)
arrange(mtcars, mpg)

# filtra a base
filter(mtcars, cyl == 4 & mpg > 24)

# criar ou modificar colunas
mutate(mtcars, mpg2 = mpg ^ 2)

# sumarizar a base
summarise(mtcars, mpg_medio = mean(mpg))

# agrupar a base antes de fazer uma operacao
group_by(mtcars)


mtcars |>
  group_by(cyl) |>
  summarise(mpg_medio = mean(mpg))



1 %in% c(1, 2, 3)

!estado %in% c("PR", "SC", "RS")



