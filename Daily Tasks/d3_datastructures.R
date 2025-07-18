#VECTORS (created using 'c')
fruits = c("apple", "mango", "banana", "orange")
fruits
length(fruits)

numbers <- c(5, 2, 4, 3, 1)
numbers

numbers <- 1:10
numbers
length(numbers)

numbers <- 1.5:5.5
numbers

fruits = c("apple", "mango", "banana", "orange")
fruits[2]
fruits[-3]
fruits[c(1,3)]
fruits[c(-2,-3)]
sort(fruits)

fruits = c("apple", "mango", "banana", "orange")
fruits[3]<- "papaya"
fruits[3]
fruits

numbers <- c(5, 2, 4, 3, 1)
sort(numbers)

repeat_each <- rep(c(1,2,3), each = 3)
print(repeat_each)

repeat_times <- rep(c(1,2,3), times = 2)
print(repeat_times)

repeat_times <- rep(c(1,2,3), times = c(3,2,1))
print(repeat_times)

numbers <- seq(from = 0, to = 100, by = 20 )
print(numbers)

numbers <- seq(from = 100, to = 0, by = -20 )
print(numbers)





#LIST
list1 = list("table", "chair", "sofa")
list1

list2 <- append(list1, "bed")
list2

list2 <- append(list1, "bed", after = 2)
list2

list3 <- list2[-1]
list3

list3[2:3]

"table" %in% list1
"table1" %in% list1





#MATRIX
matrix1 <- matrix(c(1,2,3,4,5,6), nrow = 3, ncol = 2)
matrix1

matrix1[1,2]
matrix1[2, ]
matrix1[ ,1]

matrix2 <- matrix(c("apple", "mango", "banana", "orange", "cherry", "grapes", "papaya", "pineapple", "watermelon"), nrow = 3, ncol = 3)
matrix2

matrix2[c(1,2),c(1,2)]
matrix2[, c(1,2)]
matrix2[c(2,3), ]

matrix3 <- cbind(matrix1, c(7,8,9)) #combine by column
matrix3

matrix4 <- rbind(matrix1, c(7,8))  ##combine by row
matrix4

matrix5 <- matrix2[-c(1),-c(2)]
matrix5

matrix_combined <- cbind (matrix1, matrix2) 
matrix_combined

for(rows in 1:2){
  for(columns in 2:3){
    print(matrix2[rows, columns])
  }
}

dim(matrix1)  #dimensions [row column]
dim(matrix2)

length(matrix1)  #number of elements
length(matrix2)

"apple" %in% matrix1
"apple" %in% matrix2







#ARRAYS
arr <- array(1:10, dim = c(1, 10, 1))
arr
arr[5]
arr[-5]

arr2 <- array(1:24, dim = c(4, 3, 2))
arr2
arr2[3, 2, 1]
arr2[1, 3, 2]
arr2[,3,2]
arr2[1,,1]

dim(arr)
dim(arr2)

