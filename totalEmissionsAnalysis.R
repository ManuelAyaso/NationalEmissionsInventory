# Have total emissions decreased from 1999 to 2008?

require(plyr)

# Load data into R Environment (variables NEI and SCC)
source("loadData.R")

# Total emissions grouped by year
totalEmissionsByYear <- ddply(NEI, c("year"), summarize, Emissions = sum(Emissions))

par(mar = c(5, 5, 2, 2))
plot(totalEmissionsByYear$year, totalEmissionsByYear$Emissions, type = "b", 
     xlab = "Year", ylab = "Total Emissions", pch = 20, 
     xaxt = "n", ylim = c(0, max(totalEmissionsByYear$Emissions)))
axis(1, at = seq(1999, 2008, by = 1), las = 2)
