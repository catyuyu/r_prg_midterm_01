# 散佈圖
plot (cars$speed, cars$dist, xlab= "Car speed (Km/hr)", ylab= "Break distance (m)", main= "Drive fast, die fast", type= "p", pch= 20, col= "mediumslateblue", asp= 1/10, sub= "(The data were recorded in the 1920s)")

# 線圖
plot (AirPassengers, main= "Air Passengers", sub = "(Monthly totals of international airline passengers, 1949 to 1960.)", type= "l", col ="skyblue", xlab= "Time", ylab = "Numbers of passengers", asp= 1/100)

# 直方圖
par (mfrow = c (2, 2))
hist (iris$Sepal.Length, main = "a.", col = "tomato", xlab = "Sepal length")
hist (iris$Sepal.Width, main = "b.", col = "gold", xlab = "Sepal width")
hist (iris$Petal.Length, main = "c.", col = "mediumseagreen", xlab = "Petal length")
hist (iris$Petal.Width, main= "d.", col =  "royalblue", xlab = "Petal width")
 
# 盒鬚圖
par (mfrow = c (1,1))
boxplot (sleep$extra ~sleep$group, main= "Extra sleeping hours with drug", names = c("Group 1: drug A", "Group 2: drug B"), col = c(rep ("coral", 1), rep ("aquamarine")), xlab= "Patient group", ylab= "Extra sleeping hours", sub = "(n=10 each group)")

# 長條圖
barplot( table (factor (mtcars$carb)), main = "Car number by carbs", xlab = "carb", ylab = "Vehicle counts", col= c(rep ("steelblue", 2), rep ("lightseagreen", 3), rep ("aquamarine", 1)), horiz = F)
