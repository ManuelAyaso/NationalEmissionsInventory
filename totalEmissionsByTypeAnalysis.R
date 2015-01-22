# Has the emissions decreased or increased depending on their type?

require(plyr)
require(ggplot2)

# Load data into R Environment (variables NEI and SCC)
source("loadData.R")

# Total emissions grouped by type and year
totalEmissionsByTypeAndYear <- ddply(NEI, c("type", "year"), summarize, Emissions = sum(Emissions))

png("images/totalEmissionsByTypeAndYear.png")

qplot(year, Emissions, data = totalEmissionsByTypeAndYear, facets = .~ type)

dev.off()