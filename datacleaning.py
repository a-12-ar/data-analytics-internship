import pandas as pd

# Read Excel file
df = pd.read_excel(
    r"C:\Users\sneha\OneDrive\Desktop\new folder\dataset.csv.xlsx",
    engine="openpyxl"
)

# Remove duplicate rows
df = df.drop_duplicates()

# Display data
print("Dataset:\n")
print(df)

# Duplicate count
print("\nDuplicate rows count:")
print(df.duplicated().sum())

# Check null values
print("\nNull values:")
print(df.isnull())

# Null value count
print("\nNull values count:")
print(df.isnull().sum())
print(df.info())

# for date format
df['Order_Date'] = pd.to_datetime(df['Order_Date']).dt.strftime('%d-%m-%Y')




# save clean data
df.to_excel("clean_data.xlsx",index=False)
print("clean data saved successfully!")
