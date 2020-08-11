getwd()
#Import and review data   (20pts)
#Load the tab delimited bus data file ('bus_data.tab') and inspect it.

Bus <- read.csv("bus_data.csv")
#Are there any attributes in the dataset that are not useful for analysis or for making predictions?  Why? Yes. it seems not relevant in the dataset. 

#Do any of the variables appear to be treated as discrete even though they actually represent continuous values? Yes

#Do any of the variables seem to represent the same data? Yes

#What do you think the dirTag attribute represents? Miles and time.


#Inspect the distributions of attributes and selecting data (10pts)
#Now inspect the distribution of route numbers. Are there any bus routes that should not be included in our 1 bus analysis? If so, remove those.
Bus <- Bus[,-c(13,16)]


#Is there anything else we should filter that is not a complete attribute? Yes

#3.Selecting attributes to analyze (10pts)
#Which attributes should be excluded from analysis? 
 #the attributes be excluded are dirTag,last time,local predictable,secsince report, speedKmHr,time

#Are any of them perfectly correlated? Yes, lastTime, speedKmHr, time, utc
  
#Should we include all of those? No

#b. If you want to 'label' points in your analysis with the direction the buses are heading, which attribute do you need?

#Select Data (10pts)
#Filter out the rows that have irrelevant or undefined values for dirTag, and those that have any routeTag other than 1.
Bus<- Bus[Bus$D.routeTag!=66,]

Bus<- Bus[Bus$D.routeTag!=43,]


cor(Bus)

bus_data_pca<-bus_data_pca[!is.na(bus_data_pca$D.routeTag),]
