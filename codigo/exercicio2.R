library(readxl)
exercicio2 <- read_excel("dados/exercicio2.xls")
#View(exercicio2)

tabela2 <- table(exercicio2)

distribuicao2 <- prop.table(tabela2) * 100

jpeg('graficos/exercicio2_freq_plot.jpeg')

colfunc <- colorRampPalette(c("dark green", "green"))

hist(exercicio2$Casas, 
     ylab='Frequencia',
     xlab='Quantidade de casas',
     main='Exercicio 2 - Distribuicao de frequencias',
     labels=TRUE,
     breaks=10,
     ylim=c(0,14),
     col=colfunc(10))
axis(side=1, at=seq(0,100, 10), labels=seq(0,100,10))

dev.off()


grafico2 <- mean(exercicio2$Casas)

grafico2 <- c(grafico2, median(exercicio2$Casas))

grafico2 <- c(grafico2, sd(exercicio2$Casas))

grafico2 <- c(grafico2, var(exercicio2$Casas))

grafico2 <- c(grafico2, min(exercicio2$Casas))

grafico2 <- c(grafico2, max(exercicio2$Casas))

grafico2 <- c(grafico2, quantile(exercicio2$Casas, c(0.25)))

grafico2 <- c(grafico2, quantile(exercicio2$Casas, c(0.75)))

jpeg('graficos/exercicio2_plot.jpeg')

barplot(grafico2, 
        main='Exercicio 2',
        col=rainbow(8),
        horiz=TRUE,
        cex.names=.8,
        las=1,
        names.arg = c('Media', 'Mediana', 'Desvio P.', 'Variancia', 'Minimo', 'Maximo', 'Quartil 1', 'Quartil 3'))

dev.off()

