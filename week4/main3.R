data <- read.csv("C:\\Users\\ACER USER5949486\\Desktop\\learn-r\\week4\\student_data.csv")
View(data)
library("lsr")

# ข้อ 1
meanWeight <- mean(data$Weight)
meanHeight <- mean(dataHeight)
medianWeight <- median(data$Height)
medianHeight <- median(data$Height)
print(meanWeight)
print(meanHeight)
print(medianWeight)
print(medianHeight)

# ข้อ 2
print(modeOf(data$Gender))
print(modeOf(data$Blood))

# ข้อ 3
print(sd(data$Weight))
print(var(data$Weight))
print(sd(data$Height))
print(var(data$Height))
