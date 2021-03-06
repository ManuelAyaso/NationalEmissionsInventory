# National Emissions Inventory Project
Main repository for the Course Project 2 for Exploratory Data Analysis in Coursera

I'll answer the 6 questions for this assignment using plots.

1) Have total emissions from PM2.5 decreased in the United States from 1999 to 2008? Using the base plotting system, make a plot showing the total PM2.5 emission from all sources for each of the years 1999, 2002, 2005, and 2008.

They have clearly decreased as we can see in the plot. We can see that they went from more than 7 million in 1999 to less than 3 and a half million in 2008.

![alt tag](https://raw.githubusercontent.com/ManuelAyaso/NationalEmissionsInventory/master/images/totalEmissions.png)

2) Have total emissions from PM2.5 decreased in the Baltimore City, Maryland (fips == "24510") from 1999 to 2008? Use the base plotting system to make a plot answering this question.

The total emissions in Baltimore City have drecreased from 1999 to 2008 but this time is not as clear as with the total emissions. They have decreased from more than 3 thousand in 1999 to less than 2 thousand in 2008 but we can see how they have increased from 2002 to 2005 to finally decrease in 2008, the trend is not that clear.

![alt tag](https://raw.githubusercontent.com/ManuelAyaso/NationalEmissionsInventory/master/images/totalEmissionsInBaltimore.png)

3) Of the four types of sources indicated by the type (point, nonpoint, onroad, nonroad) variable, which of these four sources have seen decreases in emissions from 1999–2008 for Baltimore City? Which have seen increases in emissions from 1999–2008? Use the ggplot2 plotting system to make a plot answer this question.

The nonpoint type has seen a clear decrease in the emissions from PM2.5, the point type has seen a slightly decrease while nonroad and onroad types the decrease is barely inexistence. None of them has increased.

![alt tag](https://raw.githubusercontent.com/ManuelAyaso/NationalEmissionsInventory/master/images/totalEmissionsByTypeAndYear.png)

4) Across the United States, how have emissions from coal combustion-related sources changed from 1999–2008?

The coal related emissions have decreased from 1999 to 2008 (from more than 500 thousands to less than 350 thousands), but the biggest decrease was produced after 2005.

![alt tag](https://raw.githubusercontent.com/ManuelAyaso/NationalEmissionsInventory/master/images/coalEmissions.png)

5) How have emissions from motor vehicle sources changed from 1999–2008 in Baltimore City?

It has decreased from more than 3 thousands to less than 2 thousands, but from from 2002 to 2005 it has increased considerable.

![alt tag](https://raw.githubusercontent.com/ManuelAyaso/NationalEmissionsInventory/master/images/vehicleEmissions.png)

6) Compare emissions from motor vehicle sources in Baltimore City with emissions from motor vehicle sources in Los Angeles County, Which city has seen greater changes over time in motor vehicle emissions?

Los Angeles has clearly changed more over the years.

![alt tag](https://raw.githubusercontent.com/ManuelAyaso/NationalEmissionsInventory/master/images/vehicleEmissionsByCityAndYear.png)

