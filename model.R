args = (commandArgs(trailingOnly = TRUE))

new_data = read.csv(args[1])
colnames(new_data) <- c("idx","Passenger_count","Trip_Distance","Fare_Amt","Tip_Amt","Spring","Summer","Fall","Winter", "Payment_type")

model = lm(Tip_Amt ~ Passenger_count + 
                     Trip_Distance + 
                     Fare_Amt +
                     Spring +
                     Summer +
                     Fall +
                     Winter, data = new_data)

coef = data.frame(model$coefficients)

write.csv(coef, "coef.csv")