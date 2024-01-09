library("lsr")
df <- read.csv("C:\\Users\\ACER USER5949486\\Desktop\\learn-r\\week4\\education.csv")

# print(df)

mean_income1 = mean( x = df$Per.Capita.Income)
mean_income2 = sum(df$Per.Capita.Income) / nrow(df)
# print(mean_income1)
# print(mean_income2)

median = median( x = df$Per.Capita.Income)
sort(x = df$Per.Capita.Income)
# print(median)

# print(modeOf( x = df$Region ))
# print(maxFreq( x = df$Region ))
# print(table(df$Region))


max_income = max(df$Per.Capita.Income)
min_income = min(df$Per.Capita.Income)
# print(max_income)
# print(min_income)
range_income = max_income - min_income
# print(range_income)
Q = quantile(x = df$Per.Capita.Income, probs = c(.25,.75))
IQR = IQR(x = df$Per.Capita.Income)
# print(Q)
# print(IQR)

MAD = mean(abs(df$Per.Capita.Income)) - mean(df$Per.Capita.Income)
SD = sd(df$Per.Capita.Income)
VAR = var(df$Per.Capita.Income)
# print(MAD)
# print(SD)
# print(VAR)



