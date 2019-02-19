#CoralMicrobiome
#The mathematical model presented here is meant to model the effect of temperature 
#on the complex network of interactions that comprise the coral reef microbiome.
#We assume that growth rate is a function of temperature.
#After modeling the effects of temperature on microbiome composition,
#we investigate how this contributes to susceptibility to black band disease

#This model is being developed using data collected by the Dinsdale Lab at SDSU
#Code has been written for MatLab

#PART 1: Temperature
periodictemp.m #shows temperature over time, matches actual yearly averages in bermuda
Rb1.m #calculates growth rate as a function of temperature for the first population
#RbX.m where X is the population group's number, uses Gaussian distribution to account for
#ideal temperature and range of acceptable temperatures for growth

#PART 2: Modeling a single population
callingrate.m #saves global parameters, must run first
onepodeqns.m #differential equation for a single population
onepopsolver.m #run this to see population dynamics for a single group

#PART 3: Modeling newtork interactions in the microbiome
callingrate.m #must run first for parameters
networkanalysis.m #describes correlation (positive or negative) between populations
multipodeqns.m #differential equations for seven population groups (most abundant classes)
multipopsolver.m #run to solve the differential equations for the network
graphing.m #graphs the seven populations' growth over time

#PART 4: The microbiome and black band disease
callingrate.m #must run first for parameters
diseasedeqns.m #adds in SI model of disease
diseasesolver.m #solves the differential equations associated with this model
