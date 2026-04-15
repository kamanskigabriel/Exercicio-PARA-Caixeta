algoritmo "Ex1"
var
   i: inteiro
inicio
   escreval("Múltiplos de 3 entre 3 e 30:")
   para i de 3 ate 30 passo 3 faca
      escreval(i)
   fimpara
fimalgoritmo

algoritmo "Ex2"
var
   i: inteiro
inicio
   escreval("Números pares entre 1 e 20:")
   para i de 2 ate 20 passo 2 faca
      escreval(i)
   fimpara
fimalgoritmo

algoritmo "Ex3"
var
   n, i, fatorial: inteiro
inicio
   escre("Digite um número inteiro positivo: ")
   leia(n)

   fatorial <- 1

   para i de 1 ate n faca
      fatorial <- fatorial * i
   fimpara

   escreval("Fatorial de ", n, " = ", fatorial)
fimalgoritmo

algoritmo "Ex4"
var
   i: inteiro
   nota: real
   conceito: caractere
inicio
   para i de 1 ate 10 faca
      escre("Digite a nota do aluno ", i, ": ")
      leia(nota)

      se (nota >= 0) e (nota <= 2.9) entao
         conceito <- "E"
      senao
         se (nota <= 4.9) entao
            conceito <- "D"
         senao
            se (nota <= 6.9) entao
               conceito <- "C"
            senao
               se (nota <= 8.9) entao
                  conceito <- "B"
               senao
                  conceito <- "A"
               fimse
            fimse
         fimse
      fimse

      escreval("Aluno ", i, " - Conceito: ", conceito)
   fimpara
fimalgoritmo

algoritmo "Ex5"
var
   i: inteiro
   nota: real
   conceito: caractere
   contD, contAeB, contE: inteiro
inicio
   contD <- 0
   contAeB <- 0
   contE <- 0

   para i de 1 ate 10 faca
      escre("Digite a nota do aluno ", i, ": ")
      leia(nota)

      se (nota >= 0) e (nota <= 2.9) entao
         conceito <- "E"
         contE <- contE + 1
      senao
         se (nota <= 4.9) entao
            conceito <- "D"
            contD <- contD + 1
         senao
            se (nota <= 6.9) entao
               conceito <- "C"
            senao
               se (nota <= 8.9) entao
                  conceito <- "B"
                  contAeB <- contAeB + 1
               senao
                  conceito <- "A"
                  contAeB <- contAeB + 1
               fimse
            fimse
         fimse
      fimse

      escreval("Aluno ", i, " - Conceito: ", conceito)
   fimpara

   escreval("Quantidade de alunos com conceito D: ", contD)
   escreval("Quantidade de alunos com conceito A ou B: ", contAeB)
   escreval("Percentual de alunos com conceito E: ", (contE/10)*100, "%")
fimalgoritmo

algoritmo "Ex6"
var
   i: inteiro
   idade: inteiro
   peso, altura: real
   contMenor18, contPeso80, totalJogadores: inteiro
   somaIdades, somaAlturas: real
inicio
   contMenor18 <- 0
   contPeso80 <- 0
   somaIdades <- 0
   somaAlturas <- 0
   totalJogadores <- 0

   // Vamos usar um limite alto e parar quando idade = 0
   para i de 1 ate 1000 faca
      escre("Digite a idade (0 para parar): ")
      leia(idade)

      se idade = 0 entao
         pare
      fimse

      escre("Digite o peso: ")
      leia(peso)

      escre("Digite a altura: ")
      leia(altura)

      totalJogadores <- totalJogadores + 1
      somaIdades <- somaIdades + idade
      somaAlturas <- somaAlturas + altura

      se idade < 18 entao
         contMenor18 <- contMenor18 + 1
      fimse

      se peso > 80 entao
         contPeso80 <- contPeso80 + 1
      fimse
   fimpara

   se totalJogadores > 0 entao
      escreval("Quantidade < 18 anos: ", contMenor18)
      escreval("Média das idades: ", somaIdades / totalJogadores)
      escreval("Média das alturas: ", somaAlturas / totalJogadores)
      escreval("Quantidade com mais de 80kg: ", contPeso80)
   senao
      escreval("Nenhum jogador informado.")
   fimse
fimalgoritmo

algoritmo "Ex7"
var
   i, codigo: inteiro
   veiculos, acidentes: inteiro
   maiorIndice: real
   mediaVeiculos, somaVeiculos: real
   somaAcidentesMenor2000: real
   contCidades, contMenor2000: inteiro
   indice: real
inicio
   maiorIndice <- 0
   somaVeiculos <- 0
   somaAcidentesMenor2000 <- 0
   contCidades <- 0
   contMenor2000 <- 0

   para i de 1 ate 1000 faca
      escre("Digite o código da cidade (0 para parar): ")
      leia(codigo)

      se codigo = 0 entao
         pare
      fimse

      escre("Número de veículos: ")
      leia(veiculos)

      escre("Número de acidentes com vítimas: ")
      leia(acidentes)

      contCidades <- contCidades + 1
      somaVeiculos <- somaVeiculos + veiculos

      indice <- acidentes / veiculos

      se indice > maiorIndice entao
         maiorIndice <- indice
      fimse

      se veiculos < 2000 entao
         somaAcidentesMenor2000 <- somaAcidentesMenor2000 + acidentes
         contMenor2000 <- contMenor2000 + 1
      fimse
   fimpara

   se contCidades > 0 entao
      mediaVeiculos <- somaVeiculos / contCidades
      escreval("Maior índice de acidentes: ", maiorIndice)
      escreval("Média de veículos: ", mediaVeiculos)
   fimse

   se contMenor2000 > 0 entao
      escreval("Média de acidentes (cidades < 2000 veículos): ",
                somaAcidentesMenor2000 / contMenor2000)
   senao
      escreval("Nenhuma cidade com menos de 2000 veículos.")
   fimse
fimalgoritmo