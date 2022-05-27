pressione_enter <- function() {
  readline("Pressione [ENTER] para continuar.")
}


funcao_magica <- function() {

  message(
    "Olá! Para começar primeiro escolha se você vai sempre falar mentira ou verdade.\n"
  )

  pressione_enter()

  message(
    "\nMuito bem, agora esconda uma moeda em uma de suas mãos. \n"
  )

  pressione_enter()

  message(
    "\nA moeda está na sua mão direita?"
  )

  res1 <- menu(c("Sim", "Não"))

  message(
    "\nAgora, você pode trocar a moeda de mão se quiser."
  )

  pressione_enter()

  message(
    "\nVocê trocou de mão?"
  )

  res2 <- menu(c("Sim", "Não"))

  if (res1 == res2) {
    message("A moeda está na mão esquerda!")
  } else {
    message("A moeda está na mão direita!")
  }

}

funcao_magica()









suppressMessages()

message("uma mensagem")

menu(c("Sim", "Não"))

readline("Texto")
