library(readxl)
exercicio3 <- read_excel("dados/exercicio3.xls")
#View(exercicio3)

medianaFilhos <- 0
somaFamilias <- 0

# Para a resolucao do exercicio foram desconsideradas as familias com mais de 5 filhos
# Calculo da mediana
for(i in 1:6) {
  somaFamilias <- somaFamilias + exercicio3$Familias[i]
}

# Pega o elemento central
z <- floor(somaFamilias / 2)
aux <- 0

# Verifica onde se situa o elemento central
for(i in 1:6) {
  aux <- aux + exercicio3$Familias[i]
  if(aux > z) break
}
medianaFilhos <- exercicio3$Filhos[i]

# Calculo da moda
modaFilhos <- 0

# verifica qual o elemento que aparece mais e pega seu indice
z <- which(exercicio3$Familias==max(exercicio3$Familias))

modaFilhos <- exercicio3$Filhos[z]

modaFilhos

grafico3 <- c(strtoi(medianaFilhos), strtoi(modaFilhos))

jpeg('graficos/exercicio3_plot.jpeg')

barplot(grafico3, 
        main='Exercicio 3',
        col=rainbow(2),
        names.arg = c('Media', 'Moda'))

dev.off()
