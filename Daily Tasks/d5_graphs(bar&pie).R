#GRAPHS
plot(2,3)
plot(c(1,2),c(3,3))

plot(1:10)
plot(1:10, type = "l")
plot(1:10, type = "b") 
plot(1:10, type = "c") #dashed line
plot(1:10, type = "h")
plot(1:10, type = "n")
plot(1:10, type = "o")
plot(1:10, type = "p") #points only (no line)
plot(1:10, type = "s") #zig-zag line

plot(1:10, xlab = "x axis", ylab = "y axis") #to label axes
plot(1:10, xlab = "x axis", ylab = "y axis", main = "mygraph") #"main" to label the graph itself

plot(1:10, col = "blue") #COLOR

plot(1:10, cex = 0.5) #cex change the size of the plot points
plot(1:10, cex = 2)

plot(1:10, cex = 2, pch = 0) #square
plot(1:10, cex = 2, pch = 1) #circle
plot(1:10, cex = 2, pch = 2) #triangle
plot(1:10, cex = 2, pch = 3) #plus sign
plot(1:10, cex = 2, pch = 4) #multiply sign x
plot(1:10, cex = 2, pch = 5) #diamond
plot(1:10, cex = 2, pch = 6) #inverted triangle
plot(1:10, cex = 2, pch = 7) 
plot(1:10, cex = 2, pch = 8) 
plot(1:10, cex = 2, pch = 9) 
plot(1:10, cex = 2, pch = 10) 
plot(1:10, cex = 2, pch = 11) 
plot(1:10, cex = 2, pch = 12) 
plot(1:10, cex = 2, pch = 13) 
plot(1:10, cex = 2, pch = 14)
plot(1:10, cex = 2, pch = 15) #black squares
plot(1:10, cex = 2, pch = 16) #black circles
plot(1:10, cex = 2, pch = 17) #black triangles
plot(1:10, cex = 2, pch = 18) #black diamonds
plot(1:10, cex = 2, pch = 19) #black circles (same as 16)
plot(1:10, cex = 2, pch = 20) #small black circles
plot(1:10, cex = 2, pch = 21) #circle (same as 1)
plot(1:10, cex = 2, pch = 22) #square (same as 0)
plot(1:10, cex = 2, pch = 23) #diamond (same as 5)
plot(1:10, cex = 2, pch = 24) #triangle (same as 2)
plot(1:10, cex = 2, pch = 25)

plot(1:10, cex = 2, pch = 26) #Error

plot(1:10, type = "l", col = "red") #color of line

plot(1:10, type = "l", lwd = 2) #"lwd" for change in width of line
plot(1:10, type = "l", lwd = 0.5)

plot(1:10, type = "l", lty = 3) #type of line (dotted, dashed or both)

line1 = c(3,4,5)
line2 = c(1,5,6)
plot(line1, type = "l")
lines(line2, type = "l") #to display both lines separately

plot(c(1,2,3),c(3,3)) #No. of ABCISSA should be equal to no. of ORDINATES otherwise it will show an error

x1 = c(1,2)
y1 = c(3,3)
plot(x1, y1)

x1 = c(1,2)
y1 = c(3,3)
x2 = c(1.5, 1.6)
y2 = c(3.5,4)
x3 = c(1.2, 1.8)
y3 = c(2.5, 2)
plot(x1, y1, col = "orange")
points(x2,y2, col = "green", pch = 2) #to display the points altogether
points(x3,y3, col = "blue",pch = 0, cex = 2)






#PIE CHARTS
x = c(8000, 2000, 4000, 6000)
pie(x)

pie(x, init.angle = 90) #to adjust the starting point of graph
pie(x, init.angle = 100)

mylabel = c("House", "Rent", "Food", "Savings")
pie(x, mylabel)

pie(x, radius = 0.5) #to adjust the size of the piechart

pie(x, main = "piechart") #to name the piechart

colors = c("red","blue", "green", "yellow")
pie(x, mylabel, col = colors)

pie(x, col = colors)
legend("topright", mylabel, fill = colors) #to add a new box(legend) that display color information

legend("topright", inset = c(-0.02,0), mylabel, fill = colors) #"inset" control the distance of legend from the plot edges
#here it will take top and right as the plot edges

pie(x, col = colors)
legend("topright", mylabel, fill = colors, cex = 0.5) #control the size of legend








#BAR CHARTS
x = c("House", "Rent", "Food", "Savings")
y = c(8000, 2000, 4000, 6000)
barplot(y)

barplot(y, names.arg = x) #labels the x values

barplot(y, names.arg = x, col = "blue") #assign single color to all bars

#to assign different colors using 2 methods
barplot(y, names.arg = x, col = c("red","blue", "green", "yellow")) #1
colors = c("red","blue", "green", "yellow") #2
barplot(y, names.arg = x, col = colors)

barplot(y, names.arg = x, col = colors, density = 100) #to change the density of the colors inside the bars

barplot(y, names.arg = x, col = colors, density = 100, width = c(1,2,3,4)) #to change the width of the bars

barplot(y, names.arg = x, horiz = TRUE, col = colors) #to represent the bar chart horizontally

