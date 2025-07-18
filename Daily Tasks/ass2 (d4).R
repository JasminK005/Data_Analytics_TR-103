year = readline("Enter the year: ")
year = as.numeric(year)

month = readline("Enter the month (1-12): ")
month = as.numeric(month)

day = readline("Enter the date (1-31): ")
day = as.numeric(day)

date <- sprintf("%04d-%02d-%02d", year, month, day)                              #sprintf() is used to format strings (%d represents integer)

date_obj <- as.Date(date, format = "%Y-%m-%d")

if(is.na(date_obj)){
  print("Invalid date")
}else{
  day_of_week <- weekdays(date_obj)
  paste("The day is: ",day_of_week)
}
