library(readxl)
exercicio1 <- read_excel("D:/Important stuff/UNESP/3o Ano - 2o Semestre/Data Science/Exercicios Estatistica Basica/dados/exercicio1.xls")
#View(exercicio1)

grafico1 <- mean(exercicio1$`Taxas de juros`)

grafico1 <- c(grafico1, median(exercicio1$`Taxas de juros`))

grafico1 <- c(grafico1, sd(exercicio1$`Taxas de juros`))

grafico1 <- c(grafico1, var(exercicio1$`Taxas de juros`))

grafico1 <- c(grafico1, min(exercicio1$`Taxas de juros`))

grafico1 <- c(grafico1, max(exercicio1$`Taxas de juros`))

grafico1 <- c(grafico1, quantile(exercicio1$`Taxas de juros`, c(0.25)))

grafico1 <- c(grafico1, quantile(exercicio1$`Taxas de juros`, c(0.75)))

jpeg('graficos/exercicio1_plot.jpeg')

barplot(grafico1, 
        main='Exercicio 1',
        col=rainbow(8),
        horiz=TRUE,
        cex.names=.8,
        las=1,
        names.arg = c('Media', 'Mediana', 'Desvio P.', 'Variancia', 'Minimo', 'Maximo', 'Quartil 1', 'Quartil 3'))
 
dev.off()

