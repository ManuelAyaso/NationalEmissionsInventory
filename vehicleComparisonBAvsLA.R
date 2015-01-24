# Compare emissions from motor vehicle sources in 
# Baltimore City with emissions from motor vehicle sources in Los Angeles County, 
# Which city has seen greater changes over time in motor vehicle emissions?

require(plyr)

# Load data into R Environment (variables NEI and SCC)
source("loadData.R")

mergedData <- merge(NEI, SCC)

x <- grep(" vehicle ", mergedData$SCC.Level.Two, ignore.case = TRUE)
data <- mergedData[x & (mergedData$fips == "24510" | mergedData$fips == "06037"), ]

data = within(data, {
    city = ifelse(fips == "24510", "Baltimore", "Los Angeles")
})

vehicleEmissionsByCityAndYear <- ddply(data, c("year", "city"), summarize, Emissions = sum(Emissions))

png("images/vehicleEmissionsByCityAndYear.png")

plot <- qplot(year, Emissions, data = vehicleEmissionsByCityAndYear, facets = .~ city)
print(plot)

dev.off()