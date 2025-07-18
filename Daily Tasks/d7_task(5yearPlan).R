test1 = data.frame(Year = rep(2021:2025, each = 12), Month = rep(month.abb, times = 5), Expenses = c(101:112, 113:124, 125:136, 137:148, 149:160))
test1

#Longer to wider
test2 = test1 %>%
  pivot_wider(names_from = "Month", values_from = "Expenses")
test2


#Wider to longer
test3 = test2 %>%
  pivot_longer(test2, cols = starts_with("Month"), names_to = "Month", values_to = "Expenes")
test3