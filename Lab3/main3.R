area <- function(base,height){
    rectangle <- base * height
    triangle <- (base * height) / 2
    return (c(rectangle, triangle))
}

ret <- area(4,2)
print(ret[1])
print(ret[2])
sprintf("rectangle area : %.2f and triangle area : %.2f", ret[1] , ret[2])