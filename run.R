# การประกาศ function ในภาษา r เหมือน anonymous function ใน js
range <- function(start = 1, stop = 5, step = 1){ 
    if(stop <= 0 || step == 0 || start == stop || (start > 0 && stop > 0 && step <= 0)){
        return (NULL)
    } else if (start > stop || start < stop){
        vector <- vector(mode = "numeric", length = as.integer(stop))
        val <- start * step
        for(i in 1:stop){ # index เริ่มที่ 1 เสมอ
            vector[i] <- val # เพิ่ม element ตามจำนวน stop
            val <- val + step # ค่า เพิ่มขึ้นทีละ step
        }
        return (vector)
    }

}

print(range(start = -1, stop = -10))