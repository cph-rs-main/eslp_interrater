# 📦 IRR R Code

This R code calculates the Gwet AC1, AC2 values and the Krippendorff's Alpha values.
Please install the necessary R packages before moving forward.
You can do a git clone if you are able to do so. 


## 🌟 Highlights

- Calculates both the Gwet AC1 & AC2
- Calculates the Krippendorff's Alpha
- Supports both CSV and Excel file formats
- Allows selection of specific row and column ranges


## ℹ️ Overview

Gwet's (2002, 2008) AC values have been chosen for the main indices. 
The Krippendorff's Alpha tends to provide inconsistent alpha values according to Zhao et al. (2013, 2018) when 
- distribution is skewed
- sample becomes larger
- data variation becomes smaller
- specificity or sensitivity becomes lower 
The KA has been criticized to be unreliable (Zhao et al., 2024).

The Gwet's AC2 in specific has been chosen for this project, because the Gwet AC allows 2 or more raters on an ordinal scale. 

This script uses the `irrCAC` package to compute chance-corrected 
agreement coefficients for ordinal data.


### ✍️ References

Zhao, X., Liu. J.S., & Deng, K. (2013). Assumptions behind Intercoder Reliability Indices. Annals of the International Communication Association. 36. 10.1080/23808985.2013.11679142. 

Zhao X.,, Feng, G.C., Liu, J.S.,  & Deng, K. (2018). We Agreed to Measure Agreement –
Redefining Reliability De-justifies Krippendorff’s Alpha. China Media Research, 14(2):1-15

Zhao, Y. J., Feng, G.C., Li, D M., Ao, S. H., Li, M. M., Tuo, Z. T., Huang, H., Deng, K., & Zhao, X. (2024). Liberal-conservative hierarchies of intercoder reliability estimators. arXiv preprint arXiv:2410.05291.



## 🚀 Usage

Configure your data range and file path in the USER SETTINGS section:

```r
# File path - supports CSV or Excel. Please input the path of where your file is down here. 
FILENAME <- "C://XXX//XXX//DATA.csv"
# FILENAME <- "C://XXX//XXX//DATA.xlsx"  # Uncomment for Excel

# ROW range (inclusive) - Set to NULL to use all rows
START_ROW <- 1      # Change to your desired starting row
END_ROW <- NULL     # Change to your desired ending row, or keep NULL for all rows

# COLUMN range (inclusive)
START_COL <- 2      # Change to your desired starting column (exclude ID columns)
END_COL <- 9        # Change to your desired ending column