### Code by R. Solimeno
# X_Bar and R chart for variables
# Use package "qcc" 

library(qcc)
xrdata <- read.csv('SurfaceTension.csv', header = TRUE)

attach(xrdata)
	par(mfrow=c(2,1))
	subgroups <- qcc.groups(Ethanol,Subgroup)
	obj <- qcc(subgroups, type = 'xbar',
		title='Surface Tension Calibration Ethanol X-Bar Chart, Aug-Dec, 2011')

speclimits <- c(21.88, 22.88) # Average (center line) of x-bar chart +/- 0.5 dyne/cm
process.capability(obj, speclimits)
detach(xrdata)

