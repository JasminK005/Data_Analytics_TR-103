a = readline("Enter the first variable: ")
b = readline("Enter the second variable: ")
op = readline("Enter the operator(+,-,/,*,%%: ")
a = as.numeric(a)
b = as.numeric(b)

if(op == "+"){
  result = a + b
}else if(op == "-"){
  result = a - b
}else if(op == "*"){
  result = a * b
}else if(op == "/" || op == "%%"){
  if(b == 0){
    result = "Error: can't divide by zero"
  }else if(op == "/"){
    result = a/b
  }else if(op == "%%"){
  result = a %% b
  }else{
    result = "enter correct operator!!"
  }
}else{
  result = "please enter correct operator!"
}

print(result)