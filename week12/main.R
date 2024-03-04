library(DescTools)

data <- read.csv("C:\\Users\\ACER USER5949486\\Desktop\\learn-r\\week12\\students.csv")
# print(data)

# A <- data[data$Blood == "A",]
# B <- data[data$Blood == "B",]
# O <- data[data$Blood == "O",]

# shapiro.test(as.numeric(A$GPA))
# shapiro.test(as.numeric(B$GPA))
# shapiro.test(as.numeric(O$GPA))
#
# qqnorm(O$GPA, main="Normal")
# qqline(O$GPA)

Blood <- data$Blood
GPA <- data$GPA
Gender <- data$Gender

one.way <- aov(GPA ~ Blood, data)
summary(one.way)

PostHocTest(one.way, method="lsd")

Male <- data[data$Gender == "Male",]
Female <- data[data$Gender == "Female",]

shapiro.test(as.numeric(Male$GPA))
shapiro.test(as.numeric(Female$GPA))

qqnorm(Male$GPA, main="Normal")
qqline(Male$GPA)

two.way <- aov(GPA ~ Blood + Gender, data)
summary(two.way)