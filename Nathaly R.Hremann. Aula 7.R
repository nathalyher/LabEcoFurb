library(WDI)
library(ggplot2)
library(dplyr)
library(WDI)
library(ggplot2)
library(dplyr)

# Dados
dadospib <- WDI(country = 'all', indicator = 'NY.GDP.MKTP.CD')

# Gráfico

grafpainel <- ggplot(data = dadospib, 
                     mapping = aes(x = year, y = NY.GDP.MKTP.CD)) +
  # Todos os países com pontos em cinza claro
  geom_point(alpha = 0.4, color = "gray70") +
  # Brasil em destaque (vermelho)
  geom_point(data = filter(dadospib, country == "Brazil"),
             color = "red", size = 2) +
  # Título e rótulos dos eixos
  labs(title = "PIB ao Longo do Tempo",
       x = "Ano",
       y = "PIB (US$ corrente)") +
  # Tema mais moderno
  theme_minimal(base_family = "Helvetica") +
  theme(
    plot.title = element_text(face = "bold", size = 16, hjust = 0.5),
    axis.title = element_text(size = 12),
    axis.text = element_text(size = 10),
    legend.position = "none"
  )

# Exibir o gráfico
grafpainel


                              

