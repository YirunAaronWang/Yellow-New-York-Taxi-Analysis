args = (commandArgs(trailingOnly = TRUE))

data = read.csv(args[1])
#data = read.csv("newfile.csv")
data$season = 0

month = as.numeric(substring(data[[2]][1],6,7))

if(month %in% c(3,4,5) ){
  data$season = "Spring"
}else if(month %in% c(6,7,8)){
  data$season = "Summer"
}else if(month %in% c(9,10,11)){
  data$season = "Fall"
}else{
  data$season = "Winter"
}
new_data = data.frame("Passenger_count" = data[[4]],
                      "Trip_Distance" = data[[5]],
                      "Fare_Amt" = data[[13]],
                      "Tip_Amt" = data[[16]],
                      "Payment_type" = data[[12]],
                      "Season" = data[[19]]
)

new_data$Payment_type = toupper(new_data$Payment_type)
new_data = new_data[new_data$Payment_type!= "NO CHARGE",]
new_data = new_data[new_data$Payment_type!= "DISPUTE",]

write.csv(new_data, args[1])
