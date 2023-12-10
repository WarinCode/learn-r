say_hello <- function(){
    print("Hello")
}

say_hello()

add <- function(x, y){
    x + y
}

substract <- function(x, y){
    x - y
}

multiply <- function(x, y){
    x * y
}

divide <- function(x, y){
    x / y
}

pow <- function(x, y) x ^ y

n1 <- 2
n2 <- 5

print(add(x = n1, y = n2)) # 7
print(substract(x = n1, y = n2)) # -3
print(multiply(x = n1, y = n2)) # 10
print(divide(x = n1, y = n2)) # 0.4
print(pow(x = n1, y = n2)) # 32