rm(list=ls())
trip = read.csv(file = "yellow_tripdata_2009-01.csv")
drop_var = c("vendor_name", "Trip_Pickup_DateTime", "Trip_Dropoff_DateTime", "Rate_Code", "store_and_forward", "Payment_Type", "mta_tax")
trip = trip[ , !(names(trip) %in% drop_var)]
res <- cor(trip)
res_ = round(res, 5)
install.packages("corrplot")
library(corrplot)
corrplot(res, type = "upper", order = "hclust", tl.col = "black", tl.srt = 45, tl.cex = 0.6, addCoef.col = 1, number.cex = 0.6, title = "Correlation Matrix", col=colorRampPalette(c("indianred2","white","dodgerblue"))(50))

         