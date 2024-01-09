library(psych)
df <- read.csv("C:\\Users\\ACER USER5949486\\Desktop\\learn-r\\week4\\education.csv")

print(skew(x = df$Education.Expenditures))
print(kurtosi(x = df$Education.Expenditures))
hist(df$Education.Expenditures)