vector1 = c(4, 2, 6, 1, 3)
vector1

min(vector1)
max(vector1)

sum(vector1)

mean(vector1)
median(vector1)

sd(vector1)

var(vector1)

quantile(vector1)
quantile(vector1, 0.75)
quantile(vector1, 0.25)


#t-test: compare two mean values
vector1
mean(vector1)

vector2 = c(14, 17, 20, 21)
mean(vector2)

t.test(vector1, vector2)


#chi square test: check goodness of fit
chisq1 = chisq.test(c(1,2,5,9))
chisq1

chisq2 = chisq.test(vector2)
chisq2


#f-test: to compare variance
f_test = var.test(vector1, vector2)
f_test

#Co-relation test: length of vectors should be same
cor.test(vector1, vector2)

vector3 = c(25, 20, 17, 13)
cor.test(vector2, vector3)
