# for loop

# กรณีใช้กับโครงสร้างข้อมูลแบบอื่น
# for(ตัวแปร in ข้อมูล){
#   ...
# }

# กรณีใช้กับการ loop ตามจำนวนรอบของตัวเลข
# for(ตัวแปร in เลขเริ่มต้น:เลขสุดท้าย){
#   ...
# }

vec <- c(1, 2, 3, 4, 5)
for (i in vec) {
    print(i)
}

vec <- c(1:12)
for (i in vec) {
    print(paste(2, "x", i, "=", 2 * i))
}

for (i in -10:0) {
    print(i) # ค่าจะเพิ่มทีละ 1
}

# while loop
# count <- 0  ค่าเริ่มต้นที่ต้องไว้นับจำนวนรอบและเพิ่มค่าไปเรื่อยๆ
# while(เงื่อนไข){
#   ทำบางอย่างใน loop ...
#   count <- count + 1  เพิ่มค่า(จำเป็นต้องมี)
# }

i <- 1
while (i <= 100) {
    isEven <- i %% 2 == 0
    if (isEven) {
        print(paste("เลข", i, "เป็นเลขคู่"))
    } else {
        print(paste("เลข", i, "เป็นเลขคี่"))
    }
    i <- i + 1
}

sum <- 0
j <- 0
while(j <= 100){
    j <- j + 1
    if(j %% 10 == 0){
        next # เหมือน continue
    } else {
        sum <- sum + j
    }
}
print(sum)
