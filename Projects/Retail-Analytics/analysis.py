import pandas as pd

# CSV load cheyyadam
df = pd.read_csv('fmcg_sales.csv')

print("First 5 rows:")
print(df.head())

print("\nData Info:")
print(df.info())

print("\nSummary Stats:")
print(df.describe())
