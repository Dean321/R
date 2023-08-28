#Suppose the mean weight of King Penguins found in an Antarctic colony last year was 15.4 kg. In a sample of 35 penguins same time this year in the same colony, the mean penguin weight is 14.6 kg. Assume the sample standard deviation is 2.5 kg. At .05 significance level, can we reject the null hypothesis that the mean penguin weight does not differ from last year?
xbar = 14.6            # sample mean 
mu0 = 15.4             # hypothesized value 
s = 2.5                # sample standard deviation 
n = 35                 # sample size 
t = (xbar???mu0)/(s/sqrt(n)) 
t                      # test statistic (Ans)
alpha = .05     #critical values at .05 significance level.
t.half.alpha = qt(1???alpha/2, df=n???1) 
c(???t.half.alpha, t.half.alpha) 

#Survival Analysis
install.packages("survival")
library(survival)
print(head(pbc))
# Create the survival object.
survfit(Surv(pbc$time,pbc$status == 2)~1)
# Give the chart file a name.
png(file = "survival.png")
# Plot the graph.
plot(survfit(Surv(pbc$time,pbc$status == 2)~1))
# Save the file.
dev.off()

#factorial recursion
fact=function(n){
  if(n==0)
    return(1)
  else
    return(n*fact(n-1))
}
fact(5)

#anonymous function
(function(x) x * 10) (10)


