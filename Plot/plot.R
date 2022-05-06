args = (commandArgs(trailingOnly = TRUE))
new_data = read.csv(args[1])

spring_data = new_data[new_data$Season == "Spring",]
non_zero_tip_spring = spring_data$Tip_Amt[spring_data$Tip_Amt!=0]

summer_data = new_data[new_data$Season == "Summer",]
non_zero_tip_summer = summer_data$Tip_Amt[summer_data$Tip_Amt!=0]

fall_data = new_data[new_data$Season == "Fall",]
non_zero_tip_fall = fall_data$Tip_Amt[fall_data$Tip_Amt!=0]

winter_data = new_data[new_data$Season == "Winter",]
non_zero_tip_winter = winter_data$Tip_Amt[winter_data$Tip_Amt!=0]

df = data.frame("spring_quant" = quantile(non_zero_tip_spring, c(0, 0.25, 0.5, 0.75, 1)),
                "summer_quant" = quantile(non_zero_tip_summer, c(0, 0.25, 0.5, 0.75, 1)),
                "fall_quant" = quantile(non_zero_tip_fall, c(0, 0.25, 0.5, 0.75, 1)),
                "winter_quant" = quantile(non_zero_tip_winter, c(0, 0.25, 0.5, 0.75, 1)))

write.csv(df, "quantile.csv")
