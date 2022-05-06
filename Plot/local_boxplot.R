df = read.csv("coef.csv")
df

season = data.frame("spring" = c(0.01, 1, 2, 2.47, 3),
                    "summer" = c(0.01, 1, 1.99, 2.41, 3),
                    "fall" = c(0.01, 1, 2, 2.46,3),
                    "winter" = c(0.01, 1, 2, 2.45, 3))


boxplot(season, main = "Boxplot of Tip_Amount vs. Season", xlab = "Season", ylab = "Tip Amount")
