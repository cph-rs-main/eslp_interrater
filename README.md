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
As compared to Krippendorff's Alpha, Gwet's AC1 is less sensitive to 
the number of raters and categories, making it more robust for 
inter-rater reliability analysis with multiple coders.

This script uses the `irrCAC` package to compute chance-corrected 
agreement coefficients for ordinal data.


### ✍️ Authors

[Mention who you are and link to your GitHub or organization's website]


## 🚀 Usage

Configure your data range and file path in the USER SETTINGS section:

```r
# File path - supports CSV or Excel
FILENAME &lt;- "C://XXX//XXX//DATA.csv"
# FILENAME &lt;- "C://XXX//XXX//DATA.xlsx"  # Uncomment for Excel

# ROW range (inclusive) - Set to NULL to use all rows
START_ROW &lt;- 1      # Change to your desired starting row
END_ROW &lt;- NULL     # Change to your desired ending row, or keep NULL for all rows

# COLUMN range (inclusive)
START_COL &lt;- 2      # Change to your desired starting column (exclude ID columns)
END_COL &lt;- 9        # Change to your desired ending column