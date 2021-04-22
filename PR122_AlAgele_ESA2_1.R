#PR122_AlAgele_ESA2_1

#1
getwd() 
setwd("/Users/ismail/Desktop/Fern FH/Zwite Semester/4-PR122-P/ESA2")
read_excel("Mathe_Noten.xlsx")
#2
df <- data.frame(read_excel("Mathe_Noten.xlsx")) 
df
#3
df$X # zugriff auf erste Spalte, weil es nummerisch ist. Sonst erhält man "Error Message" 
mean(df$X)
#4
hist(df$X, xlab = "sequence", ylab = "Average", main = "Math_grades")
#5
summary(df)
table(df$w)
boxplot(df$X ~ df$w, xlab = "Gender", ylab = "Average", main = "Comparison")

#6

dfm <- data.frame(subset(df$X3, w == "m"))
dfm
dfw <- data.frame(subset(df$X3, w == "w"))
dfw

sapply(Filter(is.numeric,dfm), mean)
sapply(Filter(is.numeric,dfw), mean)
