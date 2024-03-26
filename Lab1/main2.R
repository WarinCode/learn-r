grade_by_course <- c(4, 3, 2.5, 3.5)
credit_by_course <- c(3, 3, 1, 2)
names(grade_by_course) <- c("PROG1", "CAL1", "THAI", "ENG1")
print(grade_by_course)

sum_grade <- grade_by_course * credit_by_course
print(sum_grade)

sum_grade <- sum(sum_grade)
sum_credit <- sum(credit_by_course)
print(sum_grade)
print(sum_credit)

cal_gpa <- sum_grade / sum_credit
cal_gpa <- round(cal_gpa, 2)
print(cal_gpa)