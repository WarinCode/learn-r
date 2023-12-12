id <- c(1, 2, 3, 4, 5)
name <- c("John", "Janet", "Alan", "Robert", "Anna")
salary <- c(12000, 10000, 30000, 25000, 35000)

print(id)
print(name)
print(salary)

df <- data.frame(id, name, salary)
print(df)

df <- rbind(df, c(6, "Steve", 11000))
df <- cbind(df, retired = c(0, 1, 1, 0, 1, 1))
print(df)