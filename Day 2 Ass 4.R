#Prac
#Q1
trial <- matrix(c(34,11,9,32), ncol=2) 
colnames(trial) <- c('sick', 'healthy')
rownames(trial) <- c('risk', 'no_risk') 
trial.table <- as.table(trial) 
trial.table

#Q2
trial.table['risk', 'sick']

#Ass
#Q1
CT=read.table("C:\\Users\\ADMIN\\Desktop\\day2assignments\\ClinicalTrail.txt")
#I
count(CT,c("center"))
  #OR
table(CT$center)
#II
nrow(CT[CT$age<60,])
  #or
table(CT$age<60)
#III
table(is.na(CT$age))

#Q2
access_log<-read.fwf(file = "C:\\Users\\ADMIN\\Desktop\\day2assignments\\access_log",widths=c(-18,2,-1,3,-1,4,-1,2,-1,2,-1,2),col.names=c("day","month","year","hours","min","sec"))
access_log

#Q3
error<-read.fwf(file = "C:\\Users\\ADMIN\\Desktop\\day2assignments\\error_log",widths=c(-1,3,-1,3,-2,1,-1,8,-1,4,-20),col.names=c('week','month','day','time','year'))
a<-seq(1,215,2)
error_log<-error[a,]
error_log

#Q4
install.packages("rjson")
library(rjson)
input<-fromJSON(file = "C:\\Users\\ADMIN\\Desktop\\day2assignments\\input.json")
input_df1<-data.frame(input)
input_df1
#I
input_df1[grep("R+",input_df1$Name) & as.numeric(as.character(input_df1$Salary))<500,]
#II
input_df1[as.numeric(as.character(input_df1$Salary))<800 & input_df1$Dept=="IT" | input_df1$Dept=="Operations",]

#Q5
install.packages("XML") 
library("XML") 
library("methods") 
result <- xmlParse(file = "C:\\Users\\ADMIN\\Desktop\\day2assignments\\sample.xml") 
result
#To get number of nodes present in XML file
rootnode <- xmlRoot(result) 
rootsize <- xmlSize(rootnode)
rootsize
#To get details of first node
rootnode <- xmlRoot(result) 
print(rootnode[1])
#To get different elements of a Node
rootnode <- xmlRoot(result) 
print(rootnode[[1]][[1]]) 
print(rootnode[[1]][[5]]) 
print(rootnode[[3]][[2]])
#Converting XML to dataframe
xmldataframe <- xmlToDataFrame("C:\\Users\\ADMIN\\Desktop\\day2assignments\\sample.xml") 
print(xmldataframe)

#Q6
iris
#I
table(iris$Species)
#II
table(iris$Sepal.Length==6.9)

#Q7
mt_data=mtcars
mt_data["CONDITION"] <- mt_data$mpg * mt_data$cyl
mt_data

#Q8
a<-data.frame(First=c(1:4),Second=c("A","B",NA,"D"),Third=c("D",NA,"E","F"))
a
a$Fourth<-a$First+1
a

#Q9
write.csv(a,"C:\\Users\\ADMIN\\Desktop\\day2assignments\\a.csv")

#Q10
bnames<-read.csv(file = "C:\\Users\\ADMIN\\Desktop\\day2assignments\\bnames2.csv.bz2")
#I
table(bnames$name=="Gregg")
#II
table(bnames$name=="Gregg" & bnames$year>1880 & bnames$year<2000)
#III
table(bnames$year[bnames$name])

#Q11
Died.At <- c(22,40,72,41) 
Writer.At <- c(16, 18, 36, 36) 
First.Name <- c("John", "Edgar", "Walt", "Jane") 
Second.Name <- c("Doe", "Poe", "Whitman", "Austen") 
Sex <- c("MALE", "MALE", "MALE", "FEMALE") 
Date.Of.Death <- c("2015-05-10", "1849-10-07", "1892-03-26","1817-07-18") 
writers_df <- data.frame(Died.At, Writer.At, First.Name, Second.Name, Sex, Date.Of.Death)
writers_df
data2 <- data.frame(Age.At.Death=c(22,40,72,41), Location=5:8)
data2

#Q12
names(merge.data.frame(writers_df,data2))

#Q13
names(writers_df)=c("Died.At","Writer.At","First.Name","Surname","Gender","Date.Of.Death")
names(writers_df)

#Q14
merge(writers_df, data2, by.x="Died.At", by.y="Age.At.Death")

#Q15
merge(writers_df, data2, by.x="Died.At", by.y="Age.At.Death")
merge(writers_df, data2, by.x="Died.At")
merge(writers_df, data2, by.y="Age.At.Death")


#Q16
writers_df
writers_df$Died.At<-writers_df$Died.At-1
writers_df

#Q17
writers_df$id<-c(1:4)
writers_df

#Q18
writers_df
data2
writers_df[1,"Age.At.Death"]<-22
writers_df
merge(writers_df, data2, by.y="Age.At.Death")

#Q19
merge(writers_df, data2, all.x = TRUE,all.y=TRUE)

#20
Address <- c("50 West 10th", "77 St. Marks Place", "778 Park Avenue") 
Maried <- c("YES", "NO", "YES") 
limited_writers_df <- data.frame(Address, Maried) 
limited_writers_df
writers_df
merge(writers_df,limited_writers_df,by=0)

#21
fy <- c(2010,2011,2012,2010,2011,2012,2010,2011,2012) 
company <-c("Apple","Apple","Apple","Google","Google","Google","Microsoft","Microsoft","Microsoft") 
revenue <- c(65225,108249,156508,29321,37905,50175,62484,69943,73723) 
profit <- c(14013,25922,41733,8505,9737,10737,18760,23150,16978) 
companiesData <- data.frame(fy, company, revenue, profit)
companiesData
#I
companiesData$margin<-companiesData$revenue - companiesData$profit
companiesData
#II
cbind(as.character(companiesData$company),companiesData$margin==max(companiesData$margin))
table(as.character(companiesData$company),companiesData$margin==max(companiesData$margin))
#III
cbind(as.character(companiesData$company),companiesData$margin==min(companiesData$margin))
table(as.character(companiesData$company),companiesData$margin==min(companiesData$margin))

#Q22
Subject <- c(1,2,1,2,2,1)
Gender <- c("M", "F", "M", "F", "F","M") 
Test <- c("Read", "Write", "Write", "Listen", "Read", "Listen") 
Result <- c(10, 4, 8, 6, 7, 7)
observations_long <- data.frame(Subject, Gender, Test, Result)
observations_long
spread(observations_long,Test,Result)
install.packages("tidyr")
library("tidyr")
spread(observations_long,Test,Result)
#or
install.packages("reshape2")
library(reshape2)
dcast(observations_long,Subject+Gender~Test)

#Q23
pew<-read.table(file = "C:\\Users\\ADMIN\\Desktop\\day2assignments\\pew.txt",col.names = c("religion","X.10k","X.10.20k","X.20.30k","X.30.40k","X.40.50k","X.50.75k","X.75.100k","X.100.150k","X.150k","Don.t.know.refused"))
colnames(pew)<-c("religion","10k","10-20k","20-30k","30-40k","40-50k","50-75k","75-100k","100-150k","150k","Don.t.know.refused")
colnames(pew)
income<-pew[2:10]
income
melt(pew,id.vars = "religion",variable_name = "income",value.name="value")

#Q24
gdp<-read.csv(file = "C:\\Users\\ADMIN\\Desktop\\day2assignments\\GDP.csv")
gdp
gd= gsub(pattern = "X", replacement = "", x = names(gdp))
gd
names(gdp)<-gd
head(gdp)
library(reshape2)
a=melt(gdp, id.vars = c("Country","Variable"), variable.name= "Year", value.name="var1")
head(a)









