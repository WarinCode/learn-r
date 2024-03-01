data <- read.csv("C:\\Users\\ACER USER5949486\\Desktop\\learn-r\\week10\\titanic.csv")
View(data)

pclass <- as.vector(table(data$pclass))
pclass

chisq.test(pclass, correct=TRUE)

ages <- data$age[!is.na(data$age)]
hist(ages)

qqnorm(ages, main="Normal")
qqline(ages)

mean_ages <- mean(ages)
sd_ages <- sd(ages)

ages_level <- c(10, 20, 30, 40, 50, 60, 90)
O <- findInterval(round(ages), ages_level)
O <- as.vector(table(O))

E <- pnorm(ages_level, mean=mean_ages, sd=sd_ages)
E <- c(E[1], diff(E))

chisq.test(O, E)

class <- data$pclass
survived <- data$survived

table(class, survived)
chisq.test(class, survived, correct=FALSE)
