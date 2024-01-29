data <- read.csv(file = "C:\\Users\\ACER USER5949486\\Desktop\\learn-r\\week6\\student_data.csv", header=TRUE, stringsAsFactors = TRUE)
View(data)

data1 <- as.numeric(data$Height)
shapiro.test(data1)

library("DescTools")
ShapiroFranciaTest(data1)

mean_data1 <- mean(data1)
sd_data1 <- sd(data1)
sprintf("mean of data1 is %f", mean_data1)
sprintf("sd of data1 is %f", sd_data1)

data2 <- as.numeric(data$Height[data$Blood == 'O'])
data2
shapiro.test(data2)

qqnorm(data2, main = "Normal QQ plot of Height (Blood O)")
qqline(data2, col="gray")

n <- length(data2)
sigma <- 9.00
sem <- sigma / sqrt(n)
E <- qnorm(0.975) * sem
E

intv <- mean(data2) + c(-E, E)
sprintf("interval height is %f, %f", intv[1], intv[2])

n <- length(data1)
SE <- sd_data1 / sqrt(n)
E <- qt(0.975, df= n - 1) * SE
E
intv <- mean_data1 + c(-E, E)
sprintf("interval Height is %f, %f", intv[1], intv[2])

GroupO <- data$Blood == 'O'
num_O <- sum(GroupO)
p <- num_O / length(data$Blood)
q <- 1 - p
SE <- sqrt((p * q) / n)
E <- qnorm(.975) * SE
E
intv <- p + c(-E, E)
sprintf("interval blood O proportion is %f, %f", intv[1], intv[2])

zstar <- qnorm(.975)
sigma <- 9.48
E <- 1.25
n <- zstar ^ 2 * sigma ^ 2 / E ^ 2
sprintf("Sample Size : %d", as.integer(n))

N <- 500
E <- 0.05
n <- N / (1 + (N * E ^ 2))
sprintf("Sample Size : %d", as.integer(n))

data3 <- as.numeric(data$Weight)
n <- length(data3)
sd_data3 <- sd(data3)
mean_data3 <- mean(data3)
SE <- sd_data3 / sqrt(n)
E <- qt(0.9, df = n - 1) * SE
intv <- mean_data3 + c(-E,E)
sprintf("interval Weightv is %f, %f", intv[1], intv[2])
