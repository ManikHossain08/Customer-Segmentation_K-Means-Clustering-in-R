library(tidyverse)
library(tidyquant)
library(broom)
library(umap)
library(plotly)

# SECTOR INFORMATION
sp_500_index_tbl <- read_rds("Customer_Item_data/sp_500_index_tbl.rds")
sp_500_index_tbl
sp_500_prices_tbl <- read_rds("Customer_Item_data/sp_500_prices_tbl.rds")
sp_500_prices_tbl

    ### Questions: Which stock prices behave similarity? ###

## Step 1 - Convert stock prices to a standardized format (daily returns)
    # Apply your data transformation skills

sp_500_index_tbl %>% glimpse()

sp_500_daily_returns_tbl <- sp_500_prices_tbl %>%
    
    select(symbol, date, adjusted) %>%
    
    filter(date >= ymd("2018-01-01")) %>%
    
    group_by(symbol) %>%
    mutate(lag_1 = lag(adjusted)) %>%
    ungroup() %>%
    
    filter(!is.na(lag_1)) %>%
    
    mutate(diff = adjusted - lag_1) %>%
    mutate(pct_return = diff / lag_1) %>%
    
    select(symbol, date, pct_return)

sp_500_daily_returns_tbl

## Step 2 - Convert to User-Item Format

stock_date_matrix_tbl <- sp_500_daily_returns_tbl %>%
    spread(key = date, value = pct_return, fill = 0)

stock_date_matrix_tbl

## Step 3 - Perform K-Means Clustering

stock_date_matrix_tbl












