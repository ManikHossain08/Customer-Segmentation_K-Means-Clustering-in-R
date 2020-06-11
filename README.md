# Customer-Segmentation-using-R

# Goal with a Question:
- Which stock prices behave similarly?

Answering this question will helps us to understand which companies are related, and we can use clustering to answer it!

This will be a great analysis because it will tell us which companies are competitors and which are likely in the same space (often called sectors) and can be categorized together. This analysis can help us better understand the dynamics of the market and competition, which is useful for all types of analyses from finance to sales to marketing.

# Challenge Summary: 
Organization wants to know which companies are similar to each other to help in identifying potential customers of a SAAS software solution (e.g. Salesforce CRM or equivalent) in various segments of the market. The Sales Department is very interested in this analysis, which will help them more easily penetrate various market segments

We will be analyzed the stock prices using using R in the unsupervised learning tools including 'K-Means' and 'UMAP'. We will be used a combination of `kmeans()` to find groups and `umap()` to visualize similarity of daily stock returns.

# Objectives:

Apply K-Means and UMAP along with `dplyr`, `ggplot2`, and `purrr` to create a visualization that identifies subgroups in the S&P 500 Index. We will specifically apply:

- Modeling: `kmeans()` and `umap()`
- Iteration: `purrr`
- Data Manipulation: `dplyr`, `tidyr`, and `tibble`
- Visualization: `ggplot2` (bonus `plotly`)

# Libraries:
- library(tidyverse)
- library(tidyquant)
- library(broom)
- library(umap)
- library(plotly)
