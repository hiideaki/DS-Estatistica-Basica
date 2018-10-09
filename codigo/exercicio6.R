library(readxl)
exercicio6 <- read_excel("dados/exercicio6.xls")
#View(exercicio6)

jpeg('graficos/exercicio6_plot.jpeg')

# Plot do Diagrama de Pareto baseado em: https://rstudio-pubs-static.s3.amazonaws.com/72023_670962b57f444c04999fd1a0a393e113.html

par(mar=c(5,5,4,5)) 

grafico6 <- sort(exercicio6$`Nº pessoas`, decreasing=T)

# Inicialmente desenha-se o gráfico de barras
x <- barplot(grafico6,
        ylim=c(0, 1.1 * max(y, na.rm=T)),
        axes=F,
        names.arg=exercicio6$Qualidade[order(exercicio6$`Nº pessoas`, decreasing=T)],
        cex.names=.8)
        
# Tem-se o total de pessoas (necessário para cálculo da porcentagem)
total <- sum(exercicio6$`Nº pessoas`)

# Pega as somas acumuladas em cada barra e calcula a porcentagem
y <- cumsum(grafico6) / total * 100

# Desenha os eixos esquerdo e direito, respectivamente
axis(side=2, at=seq(0,100, 10), labels=seq(0, 100, 10), las=1)
axis(side=4, at=c(0,y), labels=paste(c(0, round(y)), '%'), las=1, col='cyan4', col.axis='cyan4')

# Adiciona-se os numeros acima de cada barra
text(x, grafico6 + 3, grafico6)

# Desenha-se as linhas
lines(x, y, type='b', cex=0.7, pch=19, col='cyan4')

dev.off()

