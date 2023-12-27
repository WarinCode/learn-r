df <- read.csv(file = "C:\\Users\\ACER USER5949486\\Desktop\\learn-r\\week2\\education.csv")

View(df)

# ข้อ 1
print(sum(df$Urban.Population))
print(sum(df$Minor.Population))

ข้อ 2
for(i in 1:nrow(df)){
    if(df[i,"Urban.Population"] < 500) {
        print(df[i,"State"])
    }
}

# ข้อ 3
EduRation <- function(State){
  for (i in 1:nrow(df)){
    if (df[i,"State"] == State){
      expen <- df[i,"Education.Expenditures"]
      income <- df[i,"Per.Capita.Income"]
      rate <- expen / income
      return (rate)
    } 
  }
  return (NULL)
}

print(EduRation(State = "ME"))


# ข้อ 4
SumIncomeMoreThan500 <- function(){
    sum <- 0
    for(i in 1:nrow(df)){
        if(df[i , "Per.Capita.Income"] > 5000){
            sum <- sum + df[i , "Per.Capita.Income"]
        }
    }
    return(sum)
}

print(SumIncomeMoreThan500())