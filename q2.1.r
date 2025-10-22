#dados:
idade <- c(28, 34, 46, 26, 37, 29, 51, 31, 39, 43, 58, 44, 25, 23, 52, 42, 48, 33, 38, 46)
renda <- c(2.3, 1.6, 1.2, 0.9, 2.1, 1.6, 1.8, 1.4, 1.2, 2.8, 3.4, 2.7, 1.6, 1.2, 1.1, 2.5, 2.0, 1.7, 2.1, 3.2)
exp   <- c(2, 8, 21, 1, 15, 3, 28, 5, 13, 20, 32, 23, 1, 0, 29, 18, 19, 7, 12, 23)

# função que armazena resultados e facilita amostragem:
resumo_estat <- function(x){
  n <- length(x)
  media <- mean(x)
  mediana <- median(x)
  dp <- sd(x)
  list(n = n, mean = media, median = mediana, sd = dp)
} #basicamente a funçao pega os valores dos números e conta o tamanho do vetor para os calculos de média e mediana, e até mesmo da fórmula do desvio padrão

# calculos utilizando a função
res_idade  <- resumo_estat(idade)
res_renda  <- resumo_estat(renda)
res_exp    <- resumo_estat(exp)

# Resultados de cada uma das variáveis:
print_result <- function(nome, res){
  cat("----", nome, "----\n")
  cat(sprintf("n = %d\n", res$n))
  cat(sprintf("Média   = %.2f\n", res$mean))
  cat(sprintf("Mediana = %.2f\n", res$median))
  cat(sprintf("Desvio padrão = %.2f\n\n", res$sd))
}

print_result("Idade (anos)", res_idade)
print_result("Renda desejada (mil €)", res_renda)
print_result("Experiência (anos)", res_exp)

# Resultados intrerpretados
interpretar <- function(mean, sd, nome){
  cv <- sd / mean
  cat(sprintf("Interpretação para %s:\n", nome))
  if(cv < 0.2){ #caso o coeficiente seja abaixo de 0.2, teremos uma baixa variabilidade de resultados
    cat("- Baixa variabilidade relativa.\n")
  } else if (cv < 0.5){ #caso o coeficiente seja entre 0.2 e 0.5 teremos uma variabilidade moderadade resultados.
    cat("- Variabilidade moderada.\n")
  } else {
    cat("- Alta variabilidade relativa.\n")
  }
  cat(sprintf("- Coeficiente de variação (sd/mean) = %.2f\n\n", cv))
}

interpretar(res_idade$mean, res_idade$sd, "Idade")
interpretar(res_renda$mean, res_renda$sd, "Renda desejada")
interpretar(res_exp$mean, res_exp$sd, "Experiência")

#nestes resultados o valor de N nunca muda pois sempre analisamos sempre o mesmo vetor de dados com 20 unidades de cada um dos elementos.
