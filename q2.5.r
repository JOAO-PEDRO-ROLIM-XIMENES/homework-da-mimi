# Pacotes para plot de gráficos e armazenamento de dados
library(ggplot2)
library(dplyr)

# data frame das questões anteriores reutilizado
dados <- data.frame(
  Idade = c(28, 34, 46, 26, 37, 29, 51, 31, 39, 43, 58, 44, 25, 23, 52, 42, 48, 33, 38, 46),
  Nacionalidade = c("Italiana", "Inglesa", "Belga", "Espanhola", "Italiana", "Espanhola", 
                    "Francesa", "Belga", "Italiana", "Italiana", "Italiana", "Inglesa", 
                    "Francesa", "Espanhola", "Italiana", "Alemana", "Francesa", "Italiana",
                    "Alemana", "Italiana"),
  Renda = c(2.3, 1.6, 1.2, 0.9, 2.1, 1.6, 1.8, 1.4, 1.2, 2.8, 3.4, 2.7, 1.6, 1.2, 1.1, 2.5, 2.0, 1.7, 2.1, 3.2),
  Experiencia = c(2, 8, 21, 1, 15, 3, 28, 5, 13, 20, 32, 23, 1, 0, 29, 18, 19, 7, 12, 23)
)

#plot dos dados por nacionalidade
ggplot(dados, aes(x = Nacionalidade, y = Idade, fill = Nacionalidade)) +
  geom_boxplot(alpha = 0.7, outlier.color = "red", outlier.shape = 8) +
  theme_minimal() +
  labs(title = "Idade x nacionalidade",
       x = "Nacionalidade", y = "Idade (anos)") +
  theme(legend.position = "none")

#plot da renda por nacionalidade
ggplot(dados, aes(x = Nacionalidade, y = Renda, fill = Nacionalidade)) +
  geom_boxplot(alpha = 0.7, outlier.color = "red", outlier.shape = 8) +
  theme_minimal() +
  labs(title = "Renda desejada x nacionalidade",
       x = "Nacionalidade", y = "Renda desejada (mil euros)") +
  theme(legend.position = "none")
