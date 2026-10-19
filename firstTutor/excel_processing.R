#install.packages("readxl")
#install.packages("writexl")

library(readxl)
library(writexl)

# Create a sample data frame
sample_data <- data.frame(
  Name = c("Alice", "Bob", "Charlie"),
  Age = c(25, 30, 22),
  Score = c(90, 85, 95)
)

# Write the data frame to an Excel file
write_xlsx(sample_data, "sample_data.xlsx")

# Read the Excel file into a data frame
read_data <- read_xlsx("sample_data.xlsx")

