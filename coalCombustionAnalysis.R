# Has the emissions decreased or increased depending on their type?

require(plyr)

# Load data into R Environment (variables NEI and SCC)
source("loadData.R")

mergedData <- merge(NEI, SCC)

x <- grep(" coal ", mergedData$Short.Name, ignore.case = TRUE)
data <- mergedData[x, ]

coalCombustionByYear <- ddply(data, c("year"), summarize, Emissions = sum(Emissions))

png("images/coalEmissions.png")

par(mar = c(5, 5, 2, 2))
plot(coalCombustionByYear$year, coalCombustionByYear$Emissions, type = "b", 
     xlab = "Year", ylab = "Coal realated emissions", pch = 20, 
     xaxt = "n", ylim = c(0, max(coalCombustionByYear$Emissions) + 100000))
axis(1, at = seq(1999, 2008, by = 1), las = 2)
abline(h = 550000, untf = FALSE, col = "red")
text(2003.5, 580000, "500,000", col = "blue")
abline(h = 350000, untf = FALSE, col = "green")
text(2003.5, 380000, "350,000", col = "blue")

dev.off()