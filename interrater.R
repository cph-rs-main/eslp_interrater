# Do not install the following for now
#install.packages("renv")
#renv::init()

# install these if you haven't
#install.packages("tidyverse")
#install.packages("irrCAC")

library(tidyverse)
library(irrCAC)

# ==================== USER CONFIGURATION ====================
# File path
FILENAME <- "C://XXX//XXX//DATA.csv"

# COLUMN range (inclusive)
START_COL <- 2 # Change to your desired starting column (exclude question number)
END_COL <- 9 # Change to your desired ending column

# ROW range (inclusive) - Set to NULL to use all rows
START_ROW <- 1      # Change to your desired starting row
END_ROW <- NULL     # Change to your desired ending row, or keep NULL for all rows
# ============================================================

# READ FILE - Pick ONE (comment out the other): 
# Above reads csv, below reads excel
df <- read_csv(FILENAME, show_col_types = FALSE) %>% as.data.frame()
# df <- read_excel(FILENAME) %>% as.data.frame()

# Subset rows if specified
if (!is.null(START_ROW)) {
  end_row <- ifelse(is.null(END_ROW), nrow(df), END_ROW)
  df <- df[START_ROW:end_row, ]
}

# Subset columns using your variables
data <- df[, START_COL:END_COL]

# Calculate Krippendorff's alpha (uncomment both lines to use)
# alpha_value <- krippen.alpha.raw(data, weights = "ordinal")
# print(paste("Krippendorff's Alpha:", alpha_value))

# Calculate Gwet AC1 value
gwet_value <- gwet.ac1.raw(data, weights = "ordinal")

# Print Gwet AC1 Value
print(paste("Gwet's AC Score:", gwet_value))