student <- data.frame(Student_Name = c("A", "B", "C"), Roll_no = c(1, 2, 3), Address = c("Ludhiana", "Amritsar", "Jalandhar"), Age = c(18, 19, 18))
student

marks <- data.frame(English = c(56, 24, 78), Maths = c(70, 45, 64), Science = c(39, 90, 55))
summary(marks)

student[2]
student[c(2,3)]

student $ Age
student $ Student_Name

new_student1 <- rbind(student, c("D", 4, "Patiala", 18))
new_student1      

new_student2 <- cbind(student, Gender = c("Female", "Male", "Female"))
new_student2    

new_student2[-c(1),-c(3)]

dim(student)

nrow(student)
ncol(student)

length(student) #length function, in case of data frame, always tell the number of columns, not the number of elements
length(new_student2)

student <- data.frame(Student_Name = c("A", "B", "C"), Roll_no = c(1, 2, 3), Address = c("Ludhiana", "Amritsar", "Jalandhar"), Age = c(18, 19, 18))
new_student1 <- rbind(student, c("D", 4, "Patiala", 18))
data_frame1 <- rbind(student, new_student1)
data_frame1

data_frame2 <- cbind(student, new_student2)
data_frame2






#FACTORS
music_genre <- factor(c("Pop", "Rock", "Disco", "Ballad", "Jazz"))
music_genre

levels(music_genre)

music_genre[4]

length(music_genre)

music_genre[5] <- "other"
music_genre #Warning message:
             #In `[<-.factor`(`*tmp*`, 5, value = "other") :
             #invalid factor level, NA generated because 'other' is not defined in initial 'music_genre'

#After defining it
music_genre1 <- factor(c("Pop", "Rock", "Disco", "Ballad", "Jazz", "other"))
#music_genre1

#Now replace
music_genre1[5] <- "other"
music_genre1