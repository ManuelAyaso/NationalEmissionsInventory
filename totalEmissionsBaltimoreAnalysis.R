# Have total emissions decreased in Baltimore from 1999 to 2008?

require(plyr)

# Load data into R Environment (variables NEI and SCC)
source("loadData.R")

# Filter data by fips == "24510" (Baltimore City, Maryland)
data <- NEI[NEI$fips == "24510", ]

# Total emissions in Baltimore grouped by year
totalEmissionsByYear <- ddply(data, c("year"), summarize, Emissions = sum(Emissions))

png("images/totalEmissionsInBaltimore.png")

par(mar = c(5, 5, 2, 2))
plot(totalEmissionsByYear$year, totalEmissionsByYear$Emissions, type = "b", 
     xlab = "Year", ylab = "Total Emissions in Baltimore", pch = 20, 
     xaxt = "n", ylim = c(0, max(totalEmissionsByYear$Emissions)))
axis(1, at = seq(1999, 2008, by = 1), las = 2)
abline(h = 3000, untf = FALSE, col = "red")
text(2003.5, 3200, "3,000", col = "blue")
abline(h = 2000, untf = FALSE, col = "green")
text(2003.5, 2200, "2,000", col = "blue")

dev.off()