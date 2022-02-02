library(arules)
library(arulesViz)
library(tidyverse)

ruta <- "~/ma-2022/metodos-analiticos/datos/recetas/srep00196-s3.csv"
#gc_ruta <- "https://storage.cloud.google.com/metodos-analiticos/FIFA.csv"
if(!file.exists(ruta)){
  stop("Es necesario bajar manualmente el archivo")
} else {
  recetas <- read.csv(ruta)
}
glimpse(recetas)
lista_mb <- as(recetas, 'list')

lista_mb[[3]]
lista_mb[[15]]
lista_mb[[33]]

sprintf("Número de canastas: %s", length(lista_mb))
