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
plt <- ggplot(coil_data,aes(x=log10(PSI))) # import dataset into ggplot2
plt + geom_density()
sample_table <- coil_data %>% sample_n(50) #randomly sample 50 data points
plt2 <- ggplot(sample_table,aes(x=log10(PSI))) #import dataset into ggplot2
plt2 + geom_density() #visualize distribution using density plot
#T-test
t.test(sample_table$PSI,mu=1500) #compare sample versus population means
#Subset 1
t.test(subset(coil_data,Manufacturing_Lot=="Lot1")$PSI,mu=1500)
#Subset 2
t.test(subset(coil_data,Manufacturing_Lot=="Lot2")$PSI,mu=1500)
#Subset 3
#Subset 1
t.test(subset(coil_data,Manufacturing_Lot=="Lot3")$PSI,mu=1500)