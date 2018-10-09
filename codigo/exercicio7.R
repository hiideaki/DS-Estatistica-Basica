library(readxl)
exercicio7 <- read_excel("dados/exercicio7.xls")
#View(exercicio7)

exercicio7$Atendimento


jpeg('graficos/exercicio7_plot.jpeg')

x <- barplot(exercicio7$Atendimento,
        names.arg=exercicio7$`Áreas`,
        cex.names = 0.8,
        ylim=c(0, 400))
text(x, exercicio7$Atendimento + 12, exercicio7$Atendimento)

dev.off()