Orange
?Orange

abc = Orange
dim(Orange)

names(abc)
row.names(abc)

abc$Tree
abc$age
abc$circumference

sort(abc$age)
sort(abc$circumference)

summary(abc)

min(abc$age)
min(abc$circumference)

max(abc$age)
max(abc$circumference)

which.min(abc$age)
which.min(abc$circumference)

which.max(abc$age)
which.max(abc$circumference)








#DATA MANIPULATION
dataframe = data.frame(st_id = c(1,2,3), st_name = c("Alice", "Bob", "John"), st_age = c(20,21,22))
print(dataframe)

#Install library dplyr
filtered_data = filter(dataframe, st_age > 21)
filtered_data

myframe = data.frame(id = c(1,2,3), name = c("A", "B", "C"), age = c(20,20,21))
x = filter(myframe, age == 20)
x

select_frame = select(dataframe, st_name)
select_frame


#DATA MANIPULATION IN DATASET
Orange
?Orange

abc = Orange

select_age = select(abc, age)
select_age

select_circumference = select(abc, circumference)
select_circumference

arrange_age = arrange(abc, age) #Arrange the whole table age-wise
arrange_age

arrange_circumference = arrange(abc, circumference)
arrange_circumference

filtered_age = filter(abc, age <= 1000)
filtered_age

filtered_abc = filter(abc, age<=1000 && circumference <= 100)
filtered_abc

rename_abc = rename(abc, cir = circumference)
rename_abc

#mutation: add new column using values from existing column
mutate_abc = abc%>%
  mutate(new_age = age ^ 2)
mutate_abc





employee = data.frame(id = c(1,NA,3), name = c("A","B",NA), salary = c(NA, 10000, NA), age = c(NA, NA, 30))
employee 
#If NA not written and empty space is given for missing values then there will be an error. So NA is used to depict missing values

missing_employee = is.na(employee)
missing_employee

fill_name = fill(employee, name,.direction = "down")
fill_name
