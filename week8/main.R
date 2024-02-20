data <- read.csv("C:\\Users\\ACER USER5949486\\Desktop\\learn-r\\week8\\FoodDrink_Votes.csv")
print(data)

library(BSDA)

Food_Male <- data$Food_Price[data$Gender == "Male"]
sd_Male <- sd(Food_Male)
Food_Female <- data$Food_Price[data$Gender == "Female"]
sd_Female <- sd(Food_Female)

z.test(x=Food_Male, y=Food_Female, mu=0, sigma.x=sd_Male, sigma.y=sd_Female)

Drink_Coffee <- data$Drink_Price[data$Drink_Type == "Coffee and Tea"]
Drink_Soft <- data$Drink_Price[data$Drink_Type == "Soft Drinks"]

t.test(x=Drink_Coffee, y=Drink_Soft)

before <- c(55, 46, 78, 61, 52, 45, 47, 57, 71, 58)
after <- c(50, 42, 70, 63, 58, 35, 46, 52, 60, 49)
t.test(x=before, y=after, piared=TRUE, conf.level=0.99)

Drink_Coffee <- data$Drink_Price[data$Drink_Type == "Coffee and Tea"]
Drink_Juice <- data$Drink_Price[data$Drink_Type == "Juice Smoothie"]

t.test(x=Drink_Coffee, y=Drink_Juice, alternative="less", mu=3, var.equal=TRUE, conf.level=0.9)

table(data$Drink_Type, data$Gender)

data2 <- data[data$Food_Type == "Made to order" | data$Food_Type == "Noodles",]

table(data2$Food_Type, data2$Gender)

prop.test(table(data2$Food_Type, data2$Gender), correct=TRUE)
