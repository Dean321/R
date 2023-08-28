#Q1
mnm = read.csv("C:\\Users\\ADMIN\\Desktop\\day3assignments\\male_names.csv")
m<-head(mnm,50)
m

plot(m$Frequency,main = "GRANT",xlab = "A",ylab = "B")
grant = subset(mnm,mnm$Name == "GRANT")
grant
plot(grant$Year,grant$Frequency,xlab = "A",ylab = "B", las =1)

#Q2
sm= read.csv("C:\\Users\\ADMIN\\Desktop\\day3assignments\\StudentsMarks.csv")
mar = subset(sm,sm$Marks==0)
plot(mar$Student_ID,mar$Marks,xlab = "SID",ylab = "Marks",main = "Marks of Students",las =1)

#Q3
E=read.csv("C:\\Users\\ADMIN\\Desktop\\day3assignments\\Environment.csv")
cs=E$Number_Of_cans_Sold
cr=E$Number_Of_Cans_Recycled
plot(cs,cr,xlab = "No. of Cans Sold",ylab = "No. of Cans recycled")

#Q4
climate<-read.table(file = "C:\\Users\\ADMIN\\Desktop\\day3assignments\\Climate.txt")
climate
pairs(~V4+V5+V6+V7+V8,data = climate,main="Scatter plot of Climate",col=c("red","blue","green","yellow","magenta"))

pairs(#plots scatter plot matrix
  ~V4+V5+V6+V7+V8,
  #formula  Each term will give a separate variable in the pairs plot,
  #so terms should be numeric vectors. (A response will be interpreted 
  #as another variable, but not treated specially, so it is confusing 
  #to use one.)
  data = climate,#data
  main="Scatter plot of Climate",#label
  col=c("red","blue","green","yellow","magenta")#colours for the points
)



