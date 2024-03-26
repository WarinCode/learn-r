name <- "ชื่อนิสิต"
age <- "อายุนิสิต"
gpa <- "เกรดเฉลี่ย"
isChonburian <- FALSE

print(name)
print(age)
print(gpa)
print(isChonburian)

print(is.integer(age))
print(is.numeric(gpa))
print(is.logical(isChonburian))

age <- as.integer(age)
gpa <- as.numeric(gpa)
adult <- as.logical(age > 20)

print(age)
print(gpa)
print(adult)