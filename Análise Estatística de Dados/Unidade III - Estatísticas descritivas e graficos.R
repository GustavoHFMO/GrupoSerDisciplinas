# ------------- CODIGOS DA UNIDADE III -----------

# definindo um vetor inicial
vetor <- c(1, 2, 10, 10, 5, 3, 8, 9)


############## medidas de tendencia central #############
# calculando e printando a media
sprintf("Media: %f", mean(vetor))

# calculando e printando a mediana
sprintf("Mediana: %f", median(vetor))

# calculando a moda
moda = function(valores){
  v = table(as.vector(valores))
  names(v)[v == max(v)]
}

# printando a moda
sprintf("Moda: %s", moda(vetor))

# printando o maximo e minimo
sprintf("Max: %f", max(vetor))
sprintf("Min: %f", min(vetor))
#########################################################


################ medidas de dispersao ###################
# printando variancia
sprintf("Variancia: %f", var(vetor))
# printando desvio padrao
sprintf("Desvio padrao: %f", sd(vetor))
#########################################################


################ medidas de posicao relativa ############
# printando os quartis
sprintf("Quartis: %f",quantile(vetor))
# printando os percentis
sprintf("Percentis: %f",quantile(vetor), c(0.1, 0.2, 0.3, 0.4, 0.5, 0.6, 0.7, 0.8, 0.9, 1))
#########################################################


################ Graficos quantitativos ############
# mostrando histograma
hist(vetor)

# mostrando boxplot
boxplot(vetor)

# grafico de barras
sexo_clientes = c('F', 'M', 'M', 'F', 'F', 'M', 'M', 'M', 'M', 'M')
tipo_nota = c('BAIXA', 'BAIXA', 'BAIXA', 'ALTA', 'ALTA', 'ALTA', 'BAIXA', 'ALTA', 'BAIXA', 'ALTA')
df = data.frame(tipo_nota, sexo_clientes)
barplot(table(df))

# grafico de dispersao
height <- c(176, 154, 138, 196, 132, 176, 181, 169, 150, 175)
bodymass <- c(82, 49, 53, 112, 47, 69, 77, 71, 62, 78)
plot(bodymass, height)
abline(lm(height ~ bodymass))