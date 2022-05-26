enter_para_continuar <- function() {
  invisible(readline(
    prompt = "Pressione [enter] quando estiver pronta/pronto."
  ))
}

funcao_magica <- function() {
  message(
    "Olá! Para começar a mágica, decisa se você dirá sempre a verdade ou sempre a mentira.\n"
  )

  enter_para_continuar()

  message(
    "\nMuito bem! Agora, esconda uma moeda em uma de suas mãos.\n"
  )

  enter_para_continuar()

  message(
    "\nVamos lá! A moeda está na sua mão direita?"
  )

  res1 <- menu(c("Sim", "Não"))

  message(
    "\nCerto... Agora, vou te dar a chance de trocar a moeda de mão. Você pode trocar ou não, a escolha é sua.\n"
  )

  enter_para_continuar()

  message(
    "\nVocê trocou de mão?"
  )

  res2 <- menu(c("Sim", "Não"))

  if (res1 == res2) {
    message("A moeda está na sua mão esquerda!")
  } else {
    message("A moeda está na sua mão direita!")
  }

}

funcao_magica()


