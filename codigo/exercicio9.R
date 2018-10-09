library(readxl)
exercicio9 <- read_excel("dados/exercicio9.xls")
#View(exercicio9)

distribuicao9 <- table(cut(exercicio9$Salários, seq(4, 24, 2)))

distribuicao9

jpeg('graficos/exercicio9_plot.jpeg')

hist(exercicio9$Salários,
     breaks=10,
     xlim=c(4,24),
     labels=T,
     main='Histograma dos salarios',
     xlab='Salarios',
     ylab='Frequencia')

dev.off()

par(mar=c(5,5,4,5)) 

y <- barplot(distribuicao9,
        horiz=T,
        las=1,
        xlim=c(0,10),
        main='Diagrama de barras dos salários',
        xlab='Frequencia')

text(distribuicao9 + 0.4, y, distribuicao9)
