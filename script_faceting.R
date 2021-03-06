####################
#                  #
# Copiar todo esto #
#                  #
####################
# Hecho con gusto por Yunu�n Hern�ndez �lvarez (UAEH)


# LABORATORIO - Gr�ficos en R con ggplot2 
# faceting (romper un gr�fica en varias dentro de una cuadr�cula)



#instalando paquete 
install.packages("ggplot2")


# cargar libreria ggplot2 
library(ggplot2)


#buscar df
file.choose()

# leer base
densidad_verde <- read.csv("C:\\Users\\yunh_\\Downloads\\PARA FACETING.csv")

#ver nombres
names(densidad_verde)

# colocando grafica base
p <- ggplot(data = densidad_verde,
            mapping = aes(x = DENSITY,
                          y = PCI.2018,
                          color = Region)) +
  geom_point()

# crear objeto p
p

# facet_wrap (recomendado con una variable)
p + facet_wrap(~ Region)

# manipulando n�mero de filas
p + facet_wrap(~ Region, nrow = 3)

# manipulando n�mero de columnas
p + facet_wrap(~ Region, ncol = 5)
