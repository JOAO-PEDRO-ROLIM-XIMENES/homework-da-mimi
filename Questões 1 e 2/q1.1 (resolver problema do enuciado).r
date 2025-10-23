dados <- c(
  15.8, 22.7, 26.8, 19.1, 18.5, 14.4, 8.3, 25.9, 26.4, 9.8, 21.9, 10.5,
  17.3, 6.2, 18.0, 22.9, 24.6, 19.4, 12.3, 15.9, 20.1, 17.0, 22.3, 27.5,
  23.9, 17.5, 11.0, 20.4, 16.2, 20.8, 20.9, 21.4, 18.0, 24.3, 11.8, 17.9,
  18.7, 12.8, 15.5, 19.2, 13.9, 28.6, 19.4, 21.6, 13.5, 24.6, 20.0, 24.1,
  9.0, 17.6, 25.7, 20.1, 13.2, 23.7, 10.7, 19.0, 14.5, 18.1, 31.8, 28.5,
  22.7, 15.2, 23.0, 29.6, 11.2, 14.7, 20.5, 26.6, 13.3, 18.1, 24.8, 26.1,
  7.7, 22.5, 19.3, 19.4, 16.7, 16.9, 23.5, 18.4) # vetor desorganizado (usei IA para escrever todos os valores)

# Função para calcular a moda
moda <- function(x) {
  ux <- unique(x)               # obtém os valores únicos do vetor, ou seja, vê os valores um por um
  tab <- tabulate(match(x, ux)) # conta quantas vezes cada valor aparece na variável x
  ux[tab == max(tab)]}          # retorna o valor que mais aparece

# Medidas de tendência central
media    <- mean(dados)      # média aritmética simples
mediana  <- median(dados)    # mediana (valor central, está localizado em n+1/2, ou seja na média entr os valores da posição 40 e 41)
moda_val <- moda(dados)      # moda (valor mais frequente),(utilizando a função criada, média e mediana já apresentam função no R)

# Medidas de dispersão
amplitude      <- max(dados) - min(dados)   # pegamos o maior valor do vetor usando max e o menor usando min e fazemos a diferença entre eles para calcular amplitude
variancia      <- var(dados)                # variância amostral
desvio_padrao  <- sd(dados)                 # desvio padrão (raiz da variância)
coef_var       <- (desvio_padrao / media) * 100  # coeficiente de variação (%) (como visto nos slides dados em sala de aula)

# Exibição dos resultados 
cat("=== Medidas de Tendência Central ===\n")
cat("Média   :", round(media, 2), "\n")        # média com 2 casas decimais
cat("Mediana :", round(mediana, 2), "\n")      # mediana
cat("Moda    :", paste(moda_val, collapse = ", "), "\n\n")  # moda

cat("=== Medidas de Dispersão ===\n")
cat("Amplitude             :", round(amplitude, 2), "\n")     # amplitude
cat("Variância             :", round(variancia, 2), "\n")     # variância
cat("Desvio padrão         :", round(desvio_padrao, 2), "\n") # desvio padrão
cat("Coeficiente de variação:", round(coef_var, 2), "%\n")    # coeficiente de variação
