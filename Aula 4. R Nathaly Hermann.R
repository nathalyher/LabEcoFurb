#WDI- WORD DEVELOPMENT INDICATORS
# OS DADOS DO BANCO MUNDIAL SÃO ACESSADOS 
#install.packages("WDI")
library(WDI) # SEMPRE CHMAR O PACOTE 

# PRUCURMM AS VIGNETTES
#PÁGINAS COM INTRUÇÕES DE PACOTES 
#GDP (current US$)(NY.GDP.MKTP.CD)]
# PIB, PREÇOS CORRENTES EM DÓLAR NORTE - AMERICANO]
# CÓDIGO: NY.GDP.MKTP.CD
#VAMOS PESQUISAR O TERMO 'GDP' NO WDI 
varpid <- WDIsearch('gdp') # CRIAR UM OBJETO COM O RES 
options(scipen = 999) # AJUSTA A NOT. CLIENT.
# BUSCAR OS DADOS COM CÓDIGO DO SITE 
dadospid <- WDI(country = 'all',
                indicator = 'NY.GDP.MKTP.CD')
dadospid2023 <- WDI(country = 'all',
                indicator = 'NY.GDP.MKTP.CD',
                start = 2023,end = 2023)

