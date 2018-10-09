library(readxl)
exercicio4 <- read_excel("dados/exercicio4.xls")
#View(exercicio4)

tabela4 <- table(exercicio4)

distribuicao4 <- prop.table(tabela4)


jpeg('graficos/exercicio4_freq_plot.jpeg')

hist(exercicio4$Salários, 
     ylab='Frequencia',
     xlab='Salarios minimos',
     main='Exercicio 4 - Distribuicao de frequencias',
     labels=TRUE,
     breaks=7,
     ylim=c(0,5),
     col='light grey')

dev.off()

