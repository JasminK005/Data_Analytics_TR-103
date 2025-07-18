a=15
if(a>10){
  if(a<30){
    print("a is greater than 10 and less than 30")
  }
  else
    print("a is greater than 30")
}else
  print("a is less than 10")


if(a>10 && a<30){
  print("a lies between 10 and 30")
}else{
  print("a does not lie between 10 and 30")
}


m=5
if(m>10 && m<30){
  print("m lies between 10 and 30")
}else if(m<10 || m>30){
  print("Either m is less than 10 or greater than 30")
}


i=1
while(i<=5){
  print(i)
  i=i+1
  #print("loop")
}


i=1
while(i<=5){
  print(i)
  i=i+1
  if(i==3)
    break
}


i=1
while(i<=5){
  if(i==3){
    next
  }
  print(i)
  i=i+1
}


j = readline("Enter the number: ")
j = as.integer(j)
while(j<=5){
  print(j)
  j=j+1
}


obj = list("red", "big", "tasty")
fruits = list("apple", "mango", "banana")
for(x in obj){
  for(y in fruits){
    if(x=="red")
      next
      print(paste(x,y))
  }
}