library(readxl)
exercicio8 <- read_excel("dados/exercicio8.xls")
#View(exercicio7)

aux <- data.matrix(exercicio8)
as.array(aux)

tabela8 <- table(aux)

distribuicao8 <- prop.table(tabela8) * 100

jpeg('graficos/exercicio8_plot.jpeg')

hist(aux,
     labels=T,
     ylim=c(0,25),
     col='light grey',
     main='Exercicio 8 - Distribuicao de frequencias',
     xlab='Altura (m)',
     ylab='Frequencia')

dev.off()
