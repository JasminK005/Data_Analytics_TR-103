#TIME FORECASTING

#Load the dataset
data("mtcars")

#converting the data into time-series object
ts_data = ts(mtcars, frequency = 12, start = c(1999, 1))
ts_data

#Splitting the data
train_data  = window(ts_data, start = c(1999, 1), end = c(2000, 12))
test_data = window(ts_data, start = c(1999, 7), end = c(2000, 12))

library(forecast)
arima_model = forecast::auto.arima(test_data[,1])
arima_model

#Forecasting
forecast_result = forecast::forecast(arima_model, h = 12)
forecast_result

