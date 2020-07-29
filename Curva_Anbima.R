# Curva de Juros com dados e estimação da Anbima
# Data: 29/07/2020

# Referência: https://analisemacro.com.br/economia/politica-monetaria/estrutura-a-termo-de-taxas-de-juros-no-r/

# Pacotes ----------------------------------------------------------------------

library(GetTDData) # Pacote que pega dados da Anbima
library(ggplot2)

# Código -----------------------------------------------------------------------

#df.yield = get.yield.curve()

pdf("curva_anbima_pdf", 7, 4.5) # Salvar o gráfico em pdf na pasta do projeto
#png("curva_anbima_png", 700, 350) # Salvar o gráfico em png na pasta do projeto

ggplot(get.yield.curve(), aes(x=ref.date, y=value)) + 
geom_line(size=1) + geom_point() + facet_grid(~type, scales = 'free') +
labs(title = paste0('Atual Curva de Juros Brasileira'),
subtitle = paste0('Data: ', get.yield.curve()$current.date[1]))

dev.off()