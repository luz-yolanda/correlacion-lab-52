########################################################
#Hecho con gusto por Luz Yolanda Rivera
#Matriz de correlación
#######################################################
# Fuente: https://www.youtube.com/watch?v=rg_PaOKNhxg

#Ingresa datos
#install.packages("tidyverse")
#install.packages("rstatix")

#llamar a la librería a los paquetes
library(tidyverse)
library(rstatix)

#nombrar base de datos al archivo de la base de datos, pero nos aseguramos que los datos no tengan decimales.
base_datos <- read.csv("bdcorrela.csv")
base_datos



#generamos una matriz de correlación
matriz_correlacion <- cor_mat(base_datos)
matriz_correlacion

#graficamos con circulos

cor_plot(matriz_correlacion)

#graficamos con números y solo la parte de arriba

cor_plot(matriz_correlacion, method = "number", type = "lower")






