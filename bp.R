#read file
bl=read.csv("C:/R/r codes/blood.csv")
str(bl)
data("bl")

#another way of reading file
i=c(1,    2,    3,    4,    5,    6,    7,    8,    9,    10,   11,    12,    13,    14,    15,   16,    17,    18,    19,    20,   21,    22, 23,    24,    25,    26,    27,   20, 29,30)

age=c(39,      47,      45,      47,      65,      46,      67,      42,      67,      56,      64,      56,      59,      34,      42,     48,      45,      17,      20,      19,      36,      50,     39,      21,      44,      53,      63,      29,      25,      69)
bsp=c(144,    220,      138,      145,      162,    142,    170,      124,      158,154,      162,      150,      140,      110,      128,  130,      135,      114,      116,    124,136,      142,      120,      120,      160,      158,  144,      130,    125,      175
)
blood=data.frame(i,o,age,bsp)
data("blood")

#analysing the data
ag=bl[bl$Age,]
bp=bl[bl$SBP,]
head(,"ag")
head(bp)

#assiging to variables
x<-bl[,"Age"]
y=bl[,"SBP"]

#correlation between variables
corr=cor(y,x,method="pearson")
model<-lm(y~x)

#observe the statistical plot
plot(y~x,col=x)

#prediction of bsp(Systolic blood pressure) using age 
p1<- predict(model,data.frame("x"=20))

abline(model, col="red", lwd=3)




