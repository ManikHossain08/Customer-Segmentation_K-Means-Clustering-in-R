library(tidyverse)
library(tidyquant)
library(broom)
library(umap)
library(plotly)

# SECTOR INFORMATION
sp_500_index_tbl <- read_rds("Customer_Item_data/sp_500_index_tbl.rds")
sp_500_index_tbl

## Step 1 - Convert stock prices to a standardized format (daily returns)
