#3D PLOTTING AND ANIMATIONS

install.packages("rgl")
library(rgl)

myframe = data.frame(x = c(1,2,3), y = c(2,3,4), z = c(3,4,5))
myframe




plot(myframe$x, myframe$y) #works only for 2d coordinates

#so we use plot3d() function
plot3d(myframe$x, myframe$y, myframe$z)

plot3d(myframe$x, myframe$y, myframe$z, xlab = "x-axis", ylab = "y-axis", zlab = "z-axis", col = "blue", size = 5)

#axes3d(labels = c("x-axis", "y-axis", "z-axis"))

play3d(spin3d(axis = c(0, 0, 1), rpm = 20), duration = 10)




#ON IRIS DATASET
iris
data(iris)

var = iris
plot3d(var$Sepal.Length, var$Sepal.Width, var$Petal.Length, size = 3, col = c("red", "blue", "green"))

plot3d(var$Sepal.Length[1:5], var$Sepal.Width[1:5], var$Petal.Length[1:5], size = 7, col = c("red", "blue", "green"))

abc = iris[1:5, ]
abc

plot3d(abc$Sepal.Length, abc$Sepal.Width, abc$Petal.Length, size = 7, col = c("red", "blue", "green"))
#bg3d(color = "violet") #Change the background color
bbox3d(color = "pink")







#3D PIE CHART
x = c("House", "Rent", "Food", "Savings")
y = c(8000, 2000, 4000, 6000)
pie(y, x)


install.packages("plotrix")
library(plotrix)

pie3D(y, labels = x, explode = 0.5)

#3D PIE CHART FOR IRIS DATASET (VAR)
var1 = var$Sepal.Length
var1
pie3D(var1)

var2 = var$Sepal.Width
pie3D(var2)

var3 = var$Petal.Length
pie3D(var3)

var4 = var$Petal.Width
pie3D(var4)





#3D BAR GRAPH
barp(y, names.arg = x, col = c("red", "blue", "green", "yellow"), shadow = TRUE)

#3D bar graph of first column and first five rows of iris(var) dataset
abc = var[1:5, ]
barp(abc$Sepal.Length, col = c("red", "blue", "green", "yellow"), shadow = TRUE)






#3D HISTOGRAM
install.packages("plot3D")
library(plot3D)

hist(y, col = c("red","blue","green"))

data <- var$Sepal.Length

h <- hist(data, plot = FALSE)

z <- matrix(h$counts, ncol = 1)         # Make z a column matrix (vertical bars)
x <- h$mids                             # X-axis = bin centers
y <- 1                                  # Y-axis = dummy value (1 column)

# Plot the 3D histogram
hist3D(
  x = x,                # length(x) = nrow(z)
  y = y,                # length(y) = ncol(z)
  z = z,                # matrix: rows = x, columns = y
  col = "lightblue",
  space = 0.3,
  theta = 45, phi = 20,
  xlab = "Sepal Length",
  ylab = "",
  zlab = "Frequency",
  main = "3D Histogram of Sepal.Length (iris)"
)