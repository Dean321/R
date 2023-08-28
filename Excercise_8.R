## Question 1
male = read.csv("E:\\R Prg\\Day_3 lab Assignment\\r DATA\\male_names.csv")
mal<-head(male,50)
mal
plot(mal$Frequency,main = "GRANT",xlab = "A",ylab = "B",breaks =1)
grant = subset(male,male$Name == "GRANT")
grant
plot(grant$Year,grant$Frequency,xlab = "A",ylab = "B", las =1)
## Question 2
 student1  = read.csv("C:\\Users\\FAKHRE\\Downloads\\StudentsMarks.csv")
mar = subset(student1,student1$Marks==0)
plot(mar$Student_ID,mar$Marks,xlab = "Student_ID",ylab = "Marks",main = "Student_Marks",las =1)

## QUestion 3
Environment = read.csv("C:\\Users\\FAKHRE\\Downloads\\Environment.csv")
Env = Environment$Number_Of_cans_Sold
Env1 = Environment$Number_Of_Cans_Recycled
plot(Env,Env1,xlab = "Can_Sold",ylab = "Cans_Recycled")

##Question 4

