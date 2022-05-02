args = (commandArgs(trailingOnly = TRUE))

data = read.csv(args[1])
data$spring = 0
data$summer = 0
data$fall = 0
data$winter = 0

month = as.numeric(substring(data[[2]][1],6,7))

if(month %in% c(3,4,5) ){
  data$spring = 1
}else if(month %in% c(6,7,8)){
  data$summer = 1
}else if(month %in% c(9,10,11)){
  data$fall = 1
}else{
  data$winter = 1
}

new_data = data.frame("Passenger_count" = data[[4]],
                      "Trip_Distance" = data[[5]],
                      "Fare_Amt" = data[[13]],
                      "Tip_Amt" = data[[16]],
                      "Spring" = data[[19]],
                      "Summer" = data[[20]],
                      "Fall" = data[[21]],
                      "Winter" = data[[22]],
                      "Payment_type" = data[[12]]
)

new_data$Payment_type = toupper(new_data$Payment_type)
new_data = new_data[new_data$Payment_type!= "NO CHARGE",]
new_data = new_data[-c(which(new_data$Payment_type == "DISPUTE")),]

write.csv(new_data, args[1])
