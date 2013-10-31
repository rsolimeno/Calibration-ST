### Code by R. Solimeno
# X_Bar and R chart for variables
# Use package "qcc" 

library(qcc)
xrdata <- read.csv('SurfaceTension.csv', header = TRUE)

attach(xrdata)
	par(mfrow=c(2,1))
	subgroups <- qcc.groups(EthyleneGlycol,Subgroup)
#	pdf('HOEtOH_xbar_chart.pdf')
	obj <- qcc(subgroups, type = 'xbar',
		title='Surface Tension Calibration Eth. Glycol X-Bar Chart, Aug-Dec, 2011')
#	dev.off()
speclimits <- c(49.057, 49.557)
process.capability(obj, speclimits, confidence.level=0.95, breaks="scott",
                   add.stats=TRUE, print=TRUE, restore.par=TRUE)
detach(xrdata)

