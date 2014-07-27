#################
# Download European Capital to Total Assets from World Bank
# Christopher Gandrud
# 27 July 2014
# Copyright Tier 1 Reports
################

# Set working directory
setwd('/git_repositories/Tier1StyleGuide/ExampleReport/data/')

# Load packages
library(WDI)
library(DataCombine)

# Download raw data
Downloaded <- WDI(indicator = 'FB.BNK.CAPA.ZS', start = 2007, end = 2013, 
                  extra = TRUE)

# Extract only European, East Asian, and North American countries
Subsetted <- grepl.sub(Downloaded, pattern = c('Europe', 'East Asia', 
                        'North America'), Var = 'region')

# Add regions to European countries
regions <- read.csv('europe_country_regions.csv', stringsAsFactors = FALSE)
regions <- regions[, -2] # removes country name
names(regions) <- c('iso2c', 'EuropeanRegions')

Comb <- merge(Subsetted, regions, by = 'iso2c', all.x = TRUE)

# Save data for use in report
write.csv(Comb, file = 'CapitalData.csv')
