library(dplyr)  # para manipulação de dados

# para data frame dos dados (vamos colocar eles com indices iguais para q possamos analizar uma atrelado ao outro)
dados <- data.frame(
  Idade = c(28, 34, 46, 26, 37, 29, 51, 31, 39, 43, 58, 44, 25, 23, 52, 42, 48, 33, 38, 46),
  Nacionalidade = c("Italiana", "Inglesa", "Belga", "Espanhola", "Italiana", "Espanhola", "Francesa", 
                    "Belga", "Italiana", "Italiana", "Italiana", "Inglesa", "Francesa", "Espanhola",
                    "Italiana", "Alemana", "Francesa", "Italiana", "Alemana", "Italiana"),
  Renda = c(2.3, 1.6, 1.2, 0.9, 2.1, 1.6, 1.8, 1.4, 1.2, 2.8, 3.4, 2.7, 1.6, 1.2, 1.1, 2.5, 2.0, 1.7, 2.1, 3.2),
  Exp = c(2, 8, 21, 1, 15, 3, 28, 5, 13, 20, 32, 23, 1, 0, 29, 18, 19, 7, 12, 23)
)

#utilizando esta função abaixo, temos que o group_by é responável por pegar valores do vetor e comparar, no caso separando por cada nacionalidade, e depois fazendo a média da soma das experiências e da reda requerida por cada indivíduo
resultado <- dados %>%
  group_by(Nacionalidade) %>%
  summarise(
    Renda_Media = mean(Renda),
    Exp_Media = mean(Exp)
  )

# exibição da função explicada e explicitada acima
print(resultado)

# recebemo dentro dos _med o maior valor dentro de cada resultado específico, utilizando filtro e > para dizer que queremos que o R "filtre" o maior valor.
renda_max <- resultado %>% filter(Renda_Media == max(Renda_Media))
exp_max <- resultado %>% filter(Exp_Media == max(Exp_Media))

cat("\nMaior renda média:", renda_max$Nacionalidade, "-", renda_max$Renda_Media, "\n")
cat("Maior média de experiência:", exp_max$Nacionalidade, "-", exp_max$Exp_Media, "\n")
