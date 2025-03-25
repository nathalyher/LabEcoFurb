# API (PORTA/FORMA DE ACESSO REMOTO)
# ACESSAMOS OS DADOS DO BANCO MUNDIAL (WORLD BANK)
# WORLD DEVELOPMENT INDICATORS (WDI)
# INDICADORES DE DESENVOLVIMENTO MUNDIAL

# PIB (PRODUTO INTERNO BRUTO)

library(WDI) # CARREGAR BIBLIOTECA/PACOTE

options(scipen = 999) # REMOVER A NOT. CIENT.
# DADOS EM PAINEL
dados <- WDI(country = 'all',
                indicator = 'NY.ADJ.NNTY.KD.ZG')

paises <- c('BR', 'US')

dados <- WDI(country = paises,
                    indicator = 'NY.ADJ.NNTY.KD.ZG')

# CORTE TRANSVERSAL
dados2023 <- WDI(country = 'all',
                    indicator = 'NY.ADJ.NNTY.KD.ZG',
                    start = 2023, end = 2023)

# SÉRIE TEMPORAL
dados <- WDI(country = 'BR',
                  indicator = 'NY.ADJ.NNTY.KD.ZG')
