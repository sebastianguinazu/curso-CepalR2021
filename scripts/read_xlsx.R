
# librerias -------------------------------------------------------------------

library(dplyr)
library(readxl)

# https://readxl.tidyverse.org/

file = 'raw/provinciales_serie_remuneraciones_mensual_4dig.xlsx'

excel_format(file) # xlsx
sheets = excel_sheets(file)

sheets[3]

# opcion1
read_xlsx(file, sheet=sheets[3], range="B7:LC308")

# opcion2
read_xlsx(file, sheet=sheets[3], range="B8:LC308")

# tengo que setear los nombres a mano
achivo = read_xlsx(file, sheet=sheets[3], range="B8:LC308")
