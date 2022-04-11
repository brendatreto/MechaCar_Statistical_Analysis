## DELIVERABLE 1
## load dplyr packages
library(dplyr)

## Import and read as dataframe
MechaCar <- read.csv("MechaCar_mpg.csv")
head(MechaCar)

## Perform linear regression passing all six variables
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaCar)

## Determine p-value and r-squared value of model
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaCar))


## DELIVERABLE 2
## Import and Read as dataframe
suspension_coil <- read.csv("Suspension_Coil.csv")

## Summarize to get mean, median, variance, and standard deviation
total_summary <- suspension_coil %>%  summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups= 'keep')

## Summarize AND group by manufacturing Lot
lot_summary <- suspension_coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups= 'keep')


## DELIVERABLE 3
## Use t.test across all manufacturing lots
t.test(suspension_coil$PSI, mu=1500)

## subset by manufacturing lot and determine against population mean
t.test(subset(suspension_coil,Manufacturing_Lot=="Lot1")$PSI, mu=1500)
t.test(subset(suspension_coil,Manufacturing_Lot=="Lot2")$PSI, mu=1500)
t.test(subset(suspension_coil,Manufacturing_Lot=="Lot3")$PSI, mu=1500)  