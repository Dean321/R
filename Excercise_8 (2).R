## Question 1
male = read.csv("F:/mtech/9th week/wednesday assignments/male_names.csv")
mal<-head(male,50)
mal
plot(mal$Frequency,main = "GRANT",xlab = "A",ylab = "B",breaks =1)
grant = subset(male,male$Name == "GRANT")
grant
plot(grant$Year,grant$Frequency,xlab = "A",ylab = "B",col=c("Red","blue"), las =1)
## Question 2
 student1  = read.csv("F:/mtech/9th week/wednesday assignments/StudentsMarks.csv")
mar = subset(student1,student1$Marks==0)
plot(mar$Student_ID,mar$Marks,xlab ="Student_ID",ylab="Marks",main="Student_Marks",col=c("red","black"),las =1)

## QUestion 3
Environment = read.csv("F:/mtech/9th week/wednesday assignments/Environment.csv")
Env = Environment$Number_Of_cans_Sold
Env1 = Environment$Number_Of_Cans_Recycled
plot(Env,Env1,xlab = "Can_Sold",ylab = "Cans_Recycled",col=c("Red","green"))

##Question 4
climate<-read.table(file = "F:/mtech/9th week/wednesday assignments/Climate.txt")
climate
pairs(~V4+V5+V6+V7+V8,data = climate,main="Scatter plot of Climate",col=c("red","blue","green","yellow","magenta"))

