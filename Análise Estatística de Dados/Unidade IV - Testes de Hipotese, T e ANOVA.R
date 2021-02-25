# ------------- CODIGOS DA UNIDADE IV -----------

################### usando o teste t ####################
# dados da analise
antes <- c(29, 29.2, 27.2, 28.7, 29.2, 28.6, 28.5, 28.4, 27.5, 27.8, 27.9)
depois <- c(26, 26.5, 24.2, 22.3, 25.2, 26.1, 26.8, 27.2, 29.1, 28.3, 25.4, 26.3, 26.2, 24.1, 25.6, 26.7, 24.5, 24.3)

# gerando o boxplot
boxplot(antes, depois, names=c("Antes", "Depois"))

# usando o teste t
t.test(antes, depois, var.equal=T)
#########################################################

#################### usando o anova #####################
# dados da analise
controle <- c(29, 29.2, 27.2, 28.7, 29.2, 28.6, 28.5, 28.4, 27.5, 27.8, 27.9)
remedio1 <- c(26, 26.5, 24.2, 22.3, 25.2, 26.1, 26.8, 27.2, 29.1, 28.3, 25.4, 26.3, 26.2, 24.1, 25.6, 26.7, 24.5, 24.3)
remedio2 <- c(27, 23.5, 24.7, 22.3, 25.2, 26.1, 26.8, 27.2, 29.1, 28.3, 25.4, 26.3, 26.2, 24.1, 25.6, 26.7, 24.5, 24.3)

# criando um dataframe com os dados
labels = c(rep("controle", each=length(controle)),
           rep("remedio1", each=length(remedio1)),
           rep("remedio2", each=length(remedio2)))

dados = c(controle,
          remedio1,
          remedio2)

experimento = data.frame(dados, labels)

# executando o anova
anova <- aov(dados~labels, data=experimento)
summary(anova)
#########################################################