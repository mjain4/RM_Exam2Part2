library(RCurl)
read_url1 <- getURL("https://raw.githubusercontent.com/jrwolf/IT497/master/fitstats.csv")
temporaryFile <- tempfile()
con <- file(temporaryFile, open = "w")
cat(read_url1, file = con) 
close(con)
data1 <- read.csv(temporaryFile)
data1$Date<-as.Date(as.character(data1$Date))
data1$Steps<-as.numeric(as.factor(data1$Steps))
data1$Miles<-as.numeric(as.character(data1$Miles))

plot(x=data1$Steps,y=data1$Miles, xlab = "Steps",ylab = "Miles",)


