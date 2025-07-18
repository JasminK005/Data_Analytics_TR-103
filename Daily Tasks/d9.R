myframe = data.frame(x = c(1,2,3,4,5,6,7,8,9,10), y = c(5,7,10,2,1,3,1,8,7,2))
plot(myframe$x, myframe$y, pch = 10, xlab = "x_axis", ylab = "y_axis")

fit1 = lm(y~x, data = myframe)
fit2 = lm(y~poly(x,2, raw = TRUE), data = myframe)
fit3 = lm(y~poly(x,3, raw = TRUE), data = myframe)
fit4 = lm(y~poly(x,7, raw = TRUE), data = myframe)
fit5 = lm(y~poly(x,10, raw = TRUE), data = myframe)
plot(myframe$x, myframe$y)
#plot(myframe$x, myframe$y)
lines(myframe$x, predict(fit1, data.frame(x = myframe$x)), col = "green")

#plot(myframe$x, myframe$y)
lines(myframe$x, predict(fit2, data.frame(x = myframe$x)), col = "yellow")

#plot(myframe$x, myframe$y)
lines(myframe$x, predict(fit3, data.frame(x = myframe$x)), col = "red")

lines(myframe$x, predict(fit4, data.frame(x = myframe$x)), col = "blue")

summary(fit1)$adj.r.squared
summary(fit2)$adj.r.squared
summary(fit3)$adj.r.squared
summary(fit4)$adj.r.squared
