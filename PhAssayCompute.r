#
#
#
#
################################
# BEGIN SCRIPT

# INPUT FILENAME
input <- read.csv("2FEBDATA.csv")

time <- input$TIME 
ph <- input$pH

protonConcentration <- 10^(-ph)

plot(time,protonConcentration,ylim=c(0,9e-5),xlab="Time(seconds)",ylab="[H+]",col="blue",pch=19)

