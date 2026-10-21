import pandas as pd
import numpy as np
import os
import matplotlib.pyplot as plt
import seaborn as sns
from pathlib import Path

# Run this script from the repository root.
# Input file: data/raw/Sample-Superstore.csv
DATA_PATH = Path(__file__).resolve().parents[1] / "data" / "raw" / "Sample-Superstore.csv"
df = pd.read_csv(DATA_PATH, encoding="latin-1")
df.shape          
df.info()         
print(df.head(20))        
# df.isnull().sum()
# df.duplicated().sum()
# df.tail()
# df['Order Date'] = pd.to_datetime(df['Order Date'])
# df['Ship Date'] = pd.to_datetime(df['Ship Date'])
# df.columns = df.columns.str.strip().str.lower().str.replace(' ', '_').str.replace('-', '_')
# df.drop_duplicates(inplace=True)
# furniture = df[df['Category'] == 'Furniture']
# print(df.info())
# print(df.describe())
# # df.info(memory_usage='deep')
# df = df.drop_duplicates()
# df.columns = df.columns.str.lower().str.replace(" ", "_")
# print(df.columns)
# print(df.tail(10))
# print(df['sales'].skew())
# print(df.groupby('region').agg({'sales':'sum','profit':'sum'}))
# print(df.nlargest(10, 'sales'))
# print(df.nsmallest(10, 'profit'))
# print(df.groupby('Discount')['Profit'].mean())
# print(df.groupby('Sub-Category')['Profit'].sum()) 
# print(df.pivot_table(values='Profit', index='Region', columns='Category', aggfunc='sum'))
# print(df.head(9989))
# print(df.isnull().sum())
# print(sns.countplot())
# plt.figure(figsize=(10, 6))
# plt.title('Discount vs Profit')
# plt.xlabel('Discount')
# plt.ylabel('Profit ($)')
# plt.tight_layout()
# plt.show()
# print(sns.histplot(df['Sales'], bins=50))
# plt.show()
# print(sns.histplot(df['Profit'], bins=50))
# plt.show()
# print(sns.countplot(data=df, x='Segment'))
# plt.show()
# print(sns.countplot(data=df, x='Ship Mode'))
# plt.show()
# print(df.groupby('Product Name')['Sales'].sum().sort_values(ascending=False).head(10))
# print(df.groupby('Product Name')['Profit'].sum().sort_values(ascending=False).head(10))
# print(sns.histplot(df['Sales'], bins=50))
# plt.title('Sales Distribution')
# plt.xlabel('Sales ($)')
# plt.ylabel('Count')
# plt.show()
# numeric_cols = ['Sales', 'Profit', 'Discount', 'Quantity']
# print(sns.heatmap(df[numeric_cols].corr(), annot=True, cmap='coolwarm'))
# plt.show()
# print(sns.regplot(data=df, x='Discount', y='Profit', scatter_kws={'alpha':1}))
# plt.show()
# print(sns.boxplot(data=df, x='Category', y='Sales'))
# plt.show()
# print(sns.boxplot(data=df, x='Category', y='Profit'))
# plt.show()
# # pd.cut()
# print(df.head(9989))
# folder = r"C:\Users\TEJA SRI SAI\OneDrive\Desktop"
# df.to_excel(os.path.join(folder, "Sample Superstore2.xlsx"),  index=False)
# print(len(df))
# pd.read_csv
# print("Total rows loaded:", len(df))
# print(df.head(100))












