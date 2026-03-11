# Instalar pacotes (rodar apenas uma vez)
install.packages("ipeadatar")
install.packages("tidyverse")

# Carregar pacotes
library(ipeadatar)
library(tidyverse)

# Taxa de homicídios por estado (2020)
homic_rate2020 <- ipeadata("ADMISNC") %>%
  filter(uname == "States" & date == "2020-01-01")

# Média de anos de estudo (2020)
avg_yschol2020 <- ipeadata("DESLIGNC") %>%
  filter(uname == "States" & date == "2020-01-01")

# Ajustando as bases
hom <- select(homic_rate2020, hom = value, tcode)
edu <- select(avg_yschol2020, edu = value, tcode)

# Juntando as bases
bd <- merge(hom, edu, by = "tcode") %>%
  select(-tcode)

# Estimando o modelo
mod <- lm(hom ~ edu, data = bd)

# Resultado
summary(mod)
