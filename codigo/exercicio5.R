library(readxl)
exercicio5 <- read_excel("dados/exercicio5.xls")
#View(exercicio5)

jpeg('graficos/exercicio5_plot.jpeg')

x <- barplot(exercicio5$`Nº pessoas`,
        ylim=c(0, 50),
        main='Marcas de antitermicos preferidos',
        xlab='Marcas',
        ylab='Quantidade de pessoas',
        names.arg=c('A', 'B', 'C', 'D', 'E'))

text(x, exercicio5$`Nº pessoas` + 2, labels=exercicio5$`Nº pessoas`)

dev.off()