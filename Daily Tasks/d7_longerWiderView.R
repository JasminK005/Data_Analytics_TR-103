st_test1 = data.frame(id = c(1,2,3), name = c("Alice", "Bob", "John"), test1 = c(95, 91, 85), test2 = c(90,80,87), test3 = c(92,93,90))
st_test1




#Converting wider view to longer view
#Method 1 using "tidyr" package
st_test2 = pivot_longer(st_test1, cols = starts_with("Test"), names_to = "Test", values_to = "Score")
st_test2

#Method 2 using "reshape2" package
st_test3 = melt(st_test1, id.vars = c("id","Name"), variable.name = "Test", value.name = "Score")
st_test3





#Converting longer view to wider view
#Method 1
st_test4 = st_test2 %>%
  pivot_wider(names_from = "Test", values_from = "Score")
st_test4

#Method 2 using "tidyr" library
st_test5 = spread(st_test2, Test, Score)
st_test5

