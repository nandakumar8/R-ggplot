

###read csv files
PRIVATE_ENROLLED<-read.csv("Y:\\Desktop\\info vis\\project\\private\\csv\\enrolled-new.csv")
PUBLIC_ENROLLED<-read.csv("Y:\\Desktop\\info vis\\project\\public\\csv\\enrolled-new.csv")

PRIVATE_ENROLLED
PUBLIC_ENROLLED

###load the library
library(ggplot2)

###create scatter plot

SCATTER<-ggplot(PRIVATE_ENROLLED,aes(University,Total,color=factor(Year)))
SCATTER+geom_point(size=8)+scale_color_manual(values=c("red","blue"))

###create line graph

LINE<-ggplot(PRIVATE_ENROLLED,aes(University,Total,group=Year,color=factor(Year)))
###line with scale color hue
LINE+geom_line(size=2)+geom_point(size=5)+scale_color_hue(l=70,c=50,h=c(50,120))
###line with scale color brewer
LINE+geom_line(size=2)+geom_point(size=5)+scale_color_brewer(palette="Blues")
###line with scale color manual
LINE+geom_line(size=2)+geom_point(size=5)+scale_color_manual(values=c("red","grey"))


###create bar graph

BAR<-ggplot(PRIVATE_ENROLLED,aes(University,Total,group=Year,color=factor(Year)))
BAR+geom_bar(stat="identity",position="stack")+scale_color_manual(values=c("red","blue"))
###create grouped bar chart with no legends
BAR<-ggplot(PRIVATE_ENROLLED,aes(University,Total,group=Year,fill=Year,color=factor(Year)))
BAR+geom_bar(stat="identity",position="dodge")+guides(fill=FALSE)+ggtitle("Private University Enrollment")
###bar of counts
BAR<-ggplot(PRIVATE_ENROLLED,aes(factor(Total)))
BAR+geom_bar()
###change bar color
BAR<-ggplot(PRIVATE_ENROLLED,aes(University,Total,group=Year,fill=factor(Year)))
BAR+geom_bar(stat="identity",position="dodge")+scale_fill_manual(values=c("orange","blue"))
###bar with scale fill hue
BAR+geom_bar(stat="identity",position="dodge")+scale_fill_hue(c=50,l=50,h=c(50,200))
###bar with scale fill brewer
BAR+geom_bar(stat="identity",position="dodge")+scale_fill_brewer(palette=5)


###create histogram

INTERNET<-read.csv("C:\\Users\\Nandakumar\\Desktop\\ggplot\\internet.csv")

HIST<-ggplot(INTERNET,aes(INTERNET[,5]),fill=count)
HIST+geom_histogram(binwidth=.5)+scale_fill_gradient()

###create boxplot

BOX_DATA<-data.frame(INTERNET[1:20,1],INTERNET[0:20,2:5])
BOX_DATA<-t(BOX_DATA)
BOX<-ggplot(BOX_DATA,aes(x=BOX_DATA[1,5:8],y=BOX_DATA[2:4,5:8]))
BOX+geom_boxplot()





