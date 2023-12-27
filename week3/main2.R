books <- read.csv( file = "C:\\Users\\ACER USER5949486\\Desktop\\learn-r\\week3\\booksales.csv")
View(books)

# ข้อ 3
for(i in 1:nrow(books)){
    print(books[i, 1])
}

# ข้อ 4
for(i in 1:nrow(books)){
    for(j in 1:ncol(books)){
        if(books[i , "Sales"] > 100){
            print(books[i,j])
        }
    }
}