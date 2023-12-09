# การเปลี่ยนแปลงชนิดขอมูล

a <- "1234567"
n1 <- as.integer(a) # แปลงเป็นชนิด integer
print(n1 + 3) # 1234570

n2 <- as.numeric(a) # แปลงเป็นชนิด numberic
print(n2 / 10) # 123456.7

zero <- 0
one <- 1 # เลขที่ไม่ใช้ 0 ถือเป็นค่าควมจริงหมด (เป็๋น TRUE)

# แปลงเป็นชนิด logical
true <- as.logical(one)
false <- as.logical(zero)

print(true) # TRUE
print(false) # FALSE