x=2;y=3;z=x<y;z
u=TRUE;v=FALSE;u|v;v&u;!v
help("&")
x=as.character(3.14);class(x)
f="Joe";l="Black";paste(f,l);sprintf("%s's lastname is %s",f,l)
x=1;y=2;z=x>y;z;z1=as.integer(z);print(z);class(z)
x="Mary had a little lamb, little lamb, little lamb";substr(x,start = 1,stop = 22)
x="Alex is lost";x;y="Mary";y;sub("Alex","Claire",x);x;y
v=c(1,2,3,4,5);v*2;v;length(c(1,2,3,4,5))
v=c(1,2,3,4,5);u=c("a","b","c","d","e");w=c(u,v);w
v=c(1,2,3);u=c(4,5,6,7,8,9);v+u;u-u*v;u/v
v=c(1,2,3,4,5);v[-2]
v=c(1,2,3,4,5,6,7,8,9);v;v[2:4]
v=c("A","B","C");u=c(TRUE,FALSE,FALSE);v[u]
v=c("Alex","Dunffy");names(v)=c("F","L");v;v["F"];v[c("F","L","L","F")]
m=matrix(c(1,2,3,4,5,6,7,8,9),nrow = 3,ncol = 3,byrow = TRUE);m;m[3,2];m[,2];m[3,];dimnames(m)=list(c("r1","r2","r3"),c("c1","c2","c3"));m;a=m[2,];a
m;t(m)
a=c(m[1,1],m[2,3])
c4=c(2,3,1);cbind(m,c4);r4=c(3,2,1);rbind(m,r4)
c(m)
a=c(1,2,3);b=c("M","N","O");c=c(TRUE,TRUE,FALSE);l=list(a,b,c);l;l[2]
names(l)=c("nos","char","bool");l;l["char"]
attach(l);nos
a=c("A","B","C");b=c(1,2,3);c=c(TRUE,FALSE,FALSE);df=data.frame(a,b,c);df;class(df)
pain=c(0,3,2,2,3,3,1,2,0);fpain=factor(pain,levels = 0:3);fpain;levels(fpain)=c("none","mild","medium","sever");fpain
#library(gdata);mbk=read.xls("mbk.xls")
#library(XLConnect);wk=loadWorkbook("mbk.xls");df=readWorksheet(wk,sheet="Sheet1")
csv=read.csv(file="mbk.csv",header = TRUE)
emp=read_xlsx("mbk.xlsx")
sch=p$School;sch.freq=table(sch);sch.freq.max=max(sch.freq);sch.freq.max
  L=sch.freq==sch.freq.max;x=sch.freq[L];names(x)
                #or
  x=which(sch.freq==sch.freq.max);names(x)
                #or
  y=which.max(sch.freq);names(y)
#relative frequency
  sch.refreq=sch.freq/nrow(p);sch.refreq;old=options(digits = 1);sch.refreq
#composition scores
  cscr.freq=table(p$Composition)/nrow(p);cscr.freq
####BAR GRAPH####
  colors=c("red","blue");barplot(sch.freq,col = colors)
  barplot(sch.freq,col=factor(colors))
  sf=factor(sch.freq);sf;levels(sf)=c("red","yellow","green","violet");barplot(sch.freq,col=as.vector(sf))
  library(qcc);pareto.chart(table(sch.freq))
  pareto.chart(table(state.division))

  #tapply_fun=function(x,category,sum=TRUE,mean=FALSE){
  x=painters 
  x_cat=x$School
   x_cat_level=levels(x$category)
    len=length(x_cat_level)
    avg_val=numeric(10);
for(n in 1:len){
      csch=x_cat==x_cat_level[n]
      cp=x[csch,]
avg_val[n]=mean(cp$Composition);
    }
    #return(avg_val)
    #}
    print(avg_val)
#Find the percentage of painters whose color score is equal to or above 14.
    colour=p$Colour
    x=which(colour>=14)
    (length(x)/nrow(p))*100

#Relative Frequency Distribution of Quantitative Data
    dur=faithful$eruptions;range(dur)
    old=options(digits = 10);range(dur)
    breaks=seq(1.5,5.5,0.5);breaks
    dur.cut=cut(dur,breaks,right = FALSE);dur.cut
    dur.cut=cut(c(1.6,2.8,10.7),breaks,right = FALSE);dur.cut
    dur.cut=cut(c(1.6,2.5,10.7),breaks,right = FALSE);dur.cut
    dur.cut=cut(c(1.6,2.5,10.7),breaks,right = TRUE);dur.cut
    dur.cut=cut(dur,breaks,right = FALSE);dur.freq=table(dur.cut);dur.freq#chk values
    
    #Find the relative frequency distribution of the eruption waiting periods in faithful.
    dur.freq.max=max(dur.freq);dur.freq.max
    x=which(dur.freq==dur.freq.max);x

#histogram
    duration = faithful$eruptions;hist(duration,right=FALSE)
    colors = c("red", "yellow", "green", "violet", "orange","blue", "pink", "cyan");hist(duration,right=FALSE,col=colors,main="Old Faithful Eruptions",xlab="Duration minutes")
    #Find the histogram of the eruption waiting period in faithful.
    duration = faithful$eruptions;hh=hist(duration,right = FALSE,plot = FALSE);hh
    
#Cummulative Frequency Density
    duration = faithful$eruptions;breaks = seq(1.5, 5.5, by=0.5);duration.cut = cut(duration, breaks, right=FALSE);duration.freq = table(duration.cut)
    duration.cumfreq = cumsum(duration.freq);duration.cumfreq 
    cbind(duration.cumfreq);duration.cumfreq 
    
    duration = faithful$eruptions;hist(duration,right=FALSE)
    
#Cummulative Frequency Graph
  duration = faithful$eruptions;breaks = seq(1.5, 5.5, by=0.5);duration.cut = cut(duration, breaks, right=FALSE);duration.freq = table(duration.cut)
  cumfreq0 = c(0, cumsum(duration.freq));plot(breaks, cumfreq0,main="Old Faithful Eruptions",xlab="Duration minutes",ylab="Cumulative eruptions");lines(breaks, cumfreq0)      
        
        
        
        