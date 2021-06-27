

# Presentamos LA librería que ordena nuestros datos: 

library(tidyverse)

# Suma de los valores de una variable numérica

serie_cemento_granel <- sum(serie_cemento$granel)
serie_cemento_granel # al reescribir el nombre del objeto, R nos lo imprime en la consola

# Ordenamos los valores de una variable numérica, por default de modo ascendente

serie_cemento_granel_ordenada <- arrange(serie_cemento, granel)

(head(serie_cemento_granel_ordenada))

# Ordenamos los valores de una variable numérica de manera descendente

serie_cemento_granel_ordenada <- arrange(serie_cemento, desc(granel))

head(serie_cemento_granel_ordenada)

# Seleccionamos variables

seleccion_cemento_granel <- select(serie_cemento_granel_ordenada, granel)

(head(seleccion_cemento_granel))

# Introducimos el uso del Pipe!

cemento_granel <- serie_cemento %>% 
  arrange(desc(granel)) %>% 
  select(granel)

head(cemento_granel)


# Guardar el resultado del trabajo sobre los datos

write.csv2(cemento_granel,
           file = 'cemento_granel.csv',
           row.names = FALSE)

# Ahora...a conocer los archivos .Rmd. 
# Vamos a crear uno propio y conocer sus partes y funcionamiento general
