install.packages("sf")
library(sf)

install.packages("leaflet")
library(leaflet)

install.packages("rgeos")
library(rgeos)

cities <- read.table("C:/Users/laddi/Downloads/cities", sep=";", quote="", header=TRUE)
class(cities)
head(cities)
colnames_cities <- c("id", "cod", "country", "name", "lat", "lon", "alt")
colnames_cities

m <- data.frame(cities,coords = c(6,5,7))
class(m)
coords <- st_coordinates(m)
lat = coords[, 2]
long = coords[,1]
alt = coords[,3]

