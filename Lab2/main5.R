df <- read.csv(file = "C:\\Users\\ACER USER5949486\\Desktop\\learn-r\\week2\\education.csv")

View(df)

print(df[4])
print(df[2])
print(df[3, ])
print(df[c(3:5)])
print(df[c(3:5), ])
print(df[c(5, 7, 8), ])
print(df[c(5, 7, 8), c(1, 5)])