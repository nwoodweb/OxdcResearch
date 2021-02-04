# 
# This script is designed to read csv data for a PH Assay, parse it into pH and time in seconds
# and then plot the pH (y) against time (x) 
#
# Filename (input) and headers (time,ph) will have to be manually modified 
################################
# BEGIN SCRIPT

# INPUT FILENAME
input <- read.csv("2FEBDATA.csv")

# PARSE X AND Y, MANUALLY EDIT AS NEEDED 
time <- input$TIME 
ph <- input$pH

# CONVERT pH TO [H+]
protonConcentration <- 10^(-ph)

#PLOT 
plot(time,protonConcentration,ylim=c(0,9e-5),xlab="Time(seconds)",ylab="[H+]",col="blue",pch=19)

