major <- factor(c("CS", "IT", "CS", "IT"))
print(major)

gender <- c(1, 2, 2, 1)
print(gender)

gender <- as.factor(gender)
print(gender)

levels(gender) <- c("male", "female")
print(levels(gender))
print(gender)

major[2] <- "CS"
major[5] <- "CS"
gender[5] <- "male"

print(major)
print(gender)