# How have emissions from motor vehicle sources changed from 1999–2008 in Baltimore City?

require(plyr)

# Load data into R Environment (variables NEI and SCC)
source("loadData.R")

mergedData <- merge(NEI, SCC)

x <- grep(" vehicle ", mergedData$SCC.Level.Two, ignore.case = TRUE)
data <- mergedData[x & mergedData$fips == "24510", ]

vehicleEmissionsByYear <- ddply(data, c("year"), summarize, Emissions = sum(Emissions))

png("images/vehicleEmissions.png")

par(mar = c(5, 5, 2, 2))
plot(vehicleEmissionsByYear$year, vehicleEmissionsByYear$Emissions, type = "b", 
     xlab = "Year", ylab = "Motor vehicle emissions", pch = 20, 
     xaxt = "n", ylim = c(0, max(vehicleEmissionsByYear$Emissions)))
axis(1, at = seq(1999, 2008, by = 1), las = 2)
abline(h = 3000, untf = FALSE, col = "red")
text(2003.5, 3200, "3,000", col = "blue")
abline(h = 2000, untf = FALSE, col = "green")
text(2003.5, 2200, "2,000", col = "blue")

dev.off()