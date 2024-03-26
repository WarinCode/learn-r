data <- read.csv("C:\\Users\\ACER USER5949486\\Desktop\\learn-r\\week9\\student_data.csv")
# print(data)

data2 <- data[data$Blood == "O",]

height <- data2$Height
weight <- data2$Weight

shapiro.test(as.numeric(data2$Height))
shapiro.test(as.numeric(data2$Weight))

test <- cor.test(weight, height)
test

plot(weight, height, xlab = "Weight", ylab = "Height")

body.lm <- lm(weight ~ height, data=data)
coeffs <- coefficients(body.lm)
coeffs

height <- 175
est_weight <- coeffs[1] + coeffs[2] * height

sprintf("Weight : %f", est_weight)