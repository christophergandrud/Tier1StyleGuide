# Example Tier 1 Report: European Bank Capitalization Levels

The example report has two main files:

- A pure R source code file (*data/GatherData.R*) that downloads the data from the World Bank and minimally cleans it, including attaching European country-region designations.

- An RMarkdown file (*EuropeanCapitalization.Rmd*) that creates the graphs/tables and places them into the main output document (*EuropeanCapitalization.html*), which it also creates. 

The RMarkdown file also relies on the main CSS style file (*Tier1StyleGuide/css/Tier1Main.css*). This applies the appropriate formatting.