A = matrix(c(2, 4, 3, 1, 5, 7), nrow=2, ncol=3, byrow=TRUE)

print(A)
print(A[2, 3])
print(A[2,])
print(A[,3])
print(A[ ,c(1, 3)])
print(A[c(1,2)])

A <- cbind(A, c(6, 9))
A <- rbind(A, c(8, 10, 11, 12))
A[3, 1] <- 0
print(A)