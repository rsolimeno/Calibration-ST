### Code by R. Solimeno
# X_Bar and R chart for variables
# Use package "qcc" 

library(qcc)
xrdata <- read.csv('SurfaceTension.csv', header = TRUE)

attach(xrdata)
	par(mfrow=c(2,1))
	subgroups <- qcc.groups(Ethanol,Subgroup)
#	pdf('EtOH_xbar_chart.pdf')
	obj <- qcc(subgroups, type = 'xbar',
		title='Surface Tension Calibration Ethanol X-Bar Chart, Aug-Dec, 2011')
#	dev.off()

	subgroups <- qcc.groups(Ethanol,Subgroup)
#	pdf('EtOH_r_chart.pdf')
	obj <- qcc(subgroups, type = 'R',
		title='Surface Tension Calibration Ethanol R Chart, Aug-Dec, 2011')
#	dev.off()

detach(xrdata)

