data(package = .packages(all.available = TRUE))
all.datasets = data(package = "datasets")
length(all.datasets)









AirPassengers
?AirPassengers
abc = AirPassengers
dim(abc)

dim(AirPassengers)

iris
?iris
dim(iris)
abc = iris
dim(abc)

names(abc)
row.names(abc)

abc$Sepal.Length

sort(abc$Sepal.Length)
summary(abc)

min(abc$Sepal.Length)
max(abc$Sepal.Length)

which.min(abc$Sepal.Length) #display the index of the minimum value

which.max(abc$Sepal.Length) #display the index of the maximum value

row.names(abc)[which.min(abc$Sepal.Length)] #display row name of minimum value

mean(abc$Sepal.Length)

median(abc$Sepal.Length)

mode(abc$Sepal.Length) #display the type of mode value

names(sort(-table(abc$Sepal.Length)))[index = 1] #display the mode value

