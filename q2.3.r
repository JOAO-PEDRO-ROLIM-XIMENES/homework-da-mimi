library(ggplot2) #biblioteca para melhorar plot de gráficos

# dataframe similar ao das questções anteriores, para que se possa mesclar informações por indice
dados <- data.frame(
  Idade = c(28, 34, 46, 26, 37, 29, 51, 31, 39, 43, 58, 44, 25, 23, 52, 42, 48, 33, 38, 46),
  Nacionalidade = c("Italiana", "Inglesa", "Belga", "Espanhola", "Italiana", "Espanhola", "Francesa", 
                    "Belga", "Italiana", "Italiana", "Italiana", "Inglesa", "Francesa", "Espanhola",
                    "Italiana", "Alemana", "Francesa", "Italiana", "Alemana", "Italiana"),
  Renda = c(2.3, 1.6, 1.2, 0.9, 2.1, 1.6, 1.8, 1.4, 1.2, 2.8, 3.4, 2.7, 1.6, 1.2, 1.1, 2.5, 2.0, 1.7, 2.1, 3.2),
  Experiencia = c(2, 8, 21, 1, 15, 3, 28, 5, 13, 20, 32, 23, 1, 0, 29, 18, 19, 7, 12, 23)
)

# correlação de pearson nesse caso
correlacao <- cor(dados$Experiencia, dados$Renda, method = "pearson")

# resultado da correlação para os dados em análise
cat("Coeficiente de correlação de Pearson:", round(correlacao, 3), "\n")

# gráfico de dispersão
ggplot(dados, aes(x = Experiencia, y = Renda)) +
  geom_point(color = "black", size = 3) +  # pontos
  geom_smooth(method = "lm", color = "skyblue", se = FALSE, linewidth = 1.2) +  # linha de tendência
  labs(
    title = "Relação entre Anos de Experiência e Renda Desejada",
    x = "Experiência (anos)",
    y = "Renda desejada (milhares de euros)"
  ) +
  theme_minimal(base_size = 14)

