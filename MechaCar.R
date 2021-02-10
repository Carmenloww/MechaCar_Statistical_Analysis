#Deliverable 1: Linear Regression to Predict MPG
library(dplyr)

library(tidyverse)

MechaCar <- read.csv("MechaCar_mpg.csv",stringsAsFactors = F,check.names = F)
MechaCar_data_lm <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaCar)
summary(MechaCar_data_lm)

#Deliverable 2: Create Visualizations for the Trip Analysis 

Suspension_Coil <- read.csv("Suspension_Coil.csv",stringsAsFactors = F,check.names = F)
total_summary <- Suspension_Coil %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI), .groups= 'keep')
lot_summary <- Suspension_Coil%>%group_by(Manufacturing_Lot)%>%summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI), .groups= 'keep')


       