#Print the day of the week by taking the input from user
a = readline("Enter the number (from 1 to 7): ")
a = as.numeric(a)

func <- function(a){
  if(a == 1){
    print("Monday")
  }else if(a == 2){
    print("Tuesday")
  }else if(a == 3){
    print("Wednesday")
  }else if(a == 4){
    print("Thursday")
  }else if(a == 5){
    print("Friday")
  }else if(a == 6){
    print("Saturday")
  }else if(a == 7){
    print("Sunday")
  }else{
    print("Enter valid number!")
  }
}

func(a)


#Using Switch
a = readline("Enter the number (from 1 to 7): ")
a = as.numeric(a)

day <- switch(a,"Monday", "Tuesday", "Wednesday", "Thursday", 
              "Friday", "Saturday", "Sunday")

if(is.null(day)){
  print("Enter valid number!")
}else{
  print(day)
}


#For Month
a = readline("Enter the number (from 1 to 12): ")
a = as.numeric(a)

month <- switch(a, "January", "Februray", "March", "April", 
                "May", "June", "July", "August", 
                "September", "October", "November", "December")

if(is.null(month)){
  print("Enter valid number!")
}else{
  print(month)
}




#Color_Code
a = readline("Enter the number (from 1 to 4): ")
a = as.numeric(a)

message <- switch(a, "Your selected color is RED", 
                  "Your selected color is BLUE", 
                  "Your selected color is GREEN", 
                  "Your selected color is YELLOW")

if(is.null(message)){
  print("Select number from 1 to 4 only")
}else{
  print(message)
}