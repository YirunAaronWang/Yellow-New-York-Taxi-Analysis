args = (commandArgs(trailingOnly = TRUE))

new_data = read.csv(args[1])
#colnames(new_data) <- c("idx","Passenger_count","Fare_Amt","Tip_Amt","Season", "Payment_type")

model = lm(Tip_Amt ~ Passenger_count + 
                     Fare_Amt +
                     Payment_type +
                     Season, data = new_data)

coef = data.frame(model$coefficients)

write.csv(coef, "coef.csv")