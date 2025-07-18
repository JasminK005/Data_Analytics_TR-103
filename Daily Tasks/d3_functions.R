func <- function(x){
  print(x)
}
func(5)


func <- function(x){
  x=x+1
  paste("x = ",x)
}
func(5)


func <- function(x){
  return(x+1)
}
paste("x = ",func(5))


func1 <- function(a){
  func2 <- function(b){
    func3 <- function(c){
      return(a+b+c)
    }
    func3(5)
  }
  func2(2)
}
paste("Result: ",func1(3))


fact <- function(x){
  i = 1
  result = 1
  for(i in 1:x){
    result = result * i
  }
  return(result)
}
paste("Factorial =", fact(5))


# Recursion
fxn <- function(x){
  if(x==1||x==0){
    return(1)
  }else{
    return(x*fxn(x-1))
  }
}
print(fxn(4))



fib <- function(a){
  if(a == 0){
    return(0)
  }else if(a == 1){
    return(1)
  }else{
    return(fib(a-2)+fib(a-1))
  }
}
fib(6)



txt <- "global"
fxn <- function(){
  txt <- "local"
  paste("This is ",txt)
}
fxn()
paste("This is ",txt)