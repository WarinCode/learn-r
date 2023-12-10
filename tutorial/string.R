# function ในการหาความยาวของ string (nchar)

str1 <- "Hello World"
print(nchar(str1))

str2 <- "abcdefgh"
print(nchar(str2))

# function ในการค้นหาอักขระหรือข้อความใน string (grepl)
# grepl(ข้อความที่จะค้นหา , ข้อความ)
# จะคืนค่ากลับมาเป็นตัวเลข 1 มีอยู่ , integer(0) ไม่มีข้อความอยู่
print(grep("Hello", str1))
print(grep("World", str1))
print(grep("a", str2))
print(grep("t", str2))

# การเชื่อม string (paste)
hw <- paste("Hello", "World")
print(hw)
print(paste(1, "+", 2, "=", 1 + 2))
print(paste("สวัส", "ดี", sep = ""))


# อักขระพิเศษ (Escape Characters)
# \\	Backslash
# \n	New Line
# \r	Carriage Return
# \t	Tab
# \b	Backspa