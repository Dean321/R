#1
for(i in 1:100){
  print("Hello world!") 
  print(i*i)
}
#2
forvector<-seq(from=2, to=22, by=2) 
squaredVector=NULL
for (i in 1:length(forvector)){ 
  squaredVector[i]=forvector[i]^2 
  print(squaredVector[i]) 
}
#3 Table of any number
num<-as.integer(readline(prompt="Enter a number= ")) 
for (i in 1:10){ 
  print(paste(num,'x',i,'=',num*i)) 
}
#4
mymat = matrix(nrow=30, ncol=30) 
for(i in 1:dim(mymat)[1]) 
{ 
  for(j in 1:dim(mymat)[2]) 
  { 
    mymat[i,j] = i*j 
  }
}
mymat
#5 -ve or +ve number
num<-as.integer(readline("Enter a number: ")) 
if(num<=0){ msg<-sprintf("The entered number is %d\n", num)
print("It is Negative") }
#6
num1<-as.integer(readline("Enter a number1: "))
23
num2<-as.integer(readline("Enter a number2: ")) 
23
if(num1==num2){ 
  msg1<-sprintf("First Number is %d \n", num1) 
  msg2<-sprintf("Second Number is %d \n", num2) 
  cat(msg1) 
  cat(msg2) 
  print("The entered numbers are equal") 
}

#7
num<-as.integer(readline("Enter a number: ")) 
-21
if(num<=0)
{ 
  msg<-sprintf("The entered number is %d\n", num) 
  print("It is Negative") 
}else{ 
  print("The number entered is Positive")
}

#8
a<-100; 
if( a < 20 ){ 
  print("a is less than 20 \n") 
}else {
  print("a is not less than 20\n" )
}
msg<-sprintf("value of a is : %d\n", a) 
cat(msg)

#9
var1<-as.integer(readline("Enter first number="))
12
var2<-as.integer(readline("Enter Second number=")) 
21
msg1<-sprintf("First number is %d \n", var1 ) 
msg2<-sprintf("Second number is %d \n", var2 ) 
cat(msg1) 
cat(msg2) 
if (var1 >var2) 
{ 
  print("var1 is greater than var2") 
}else if (var2 > var1) 
{ 
  print("var2 is greater than var1") 
}else { 
  print("var1 is equal to var2") 
}

#10
a<-100; 
if( a == 10 )
{
  print("Value of a is 10\n" ); 
}else if( a == 20 )
{ 
  print("Value of a is 20\n" ); 
}else if( a == 30 )
{
  print("Value of a is 30\n" ); 
} else 
{
  print("None of the values is matching\n" ); 
} 
sprintf("Exact value of a is %d \n", a );

#11
x <- 1 
while(x < 5) 
{
  x <- x+1
  print(x)
}

#12
x <- 1 
while(x < 5) 
{
  x <- x+1
  if (x == 3) 
    break
  print(x)
}

#13
x <- 1 
while(x < 5)
{
  x <- x+1
  if (x == 3) 
    next
  print(x)
}








