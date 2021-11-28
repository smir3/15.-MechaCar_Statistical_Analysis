library(tidyverse)
# Deliverable 1
mpg_data <- read.csv('MechaCar_mpg.csv')
lm(mpg~vehicle_length+vehicle_weight+spoiler_angle+ground_clearance+AWD,data=mpg_data) # generate multiple linear regression model
summary(lm(mpg~vehicle_length+vehicle_weight+spoiler_angle+ground_clearance+AWD,data=mpg_data)) #summarize linear model
# Deliverable 2
coil_data <- read.csv('Suspension_Coil.csv')
total_summary <- coil_data %>% summarize(mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI))
lot_summary <- coil_data %>% group_by(Manufacturing_Lot) %>% summarize(mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI))
# Deliverable 3
#T-test
t.test(coil_data$PSI,mu=1500) #compare sample versus population means
#Subset 1
t.test(subset(coil_data,Manufacturing_Lot=="Lot1")$PSI,mu=1500)
#Subset 2
t.test(subset(coil_data,Manufacturing_Lot=="Lot2")$PSI,mu=1500)
#Subset 3
t.test(subset(coil_data,Manufacturing_Lot=="Lot3")$PSI,mu=1500)
