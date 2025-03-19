import pandas as pd
import numpy as np
import pymysql
import sqlalchemy
import os

# Step 1: Create output folder if it doesn't exist
output_folder = os.path.join('data', 'cleaned_reports')
os.makedirs(output_folder, exist_ok=True)
output_file = os.path.join(output_folder, 'Cleaned_Employee_Report.xlsx')

try:
    # Step 2: Connect to MySQL Database using SQLAlchemy + PyMySQL
    db_user = "root"
    db_password = "123456789"  # Replace with your password
    db_host = "localhost"
    db_name = "company_db"

    connection_str = f"mysql+pymysql://{db_user}:{db_password}@{db_host}/{db_name}"
    engine = sqlalchemy.create_engine(connection_str)
    conn = engine.connect()
    print("Connected to MySQL database using PyMySQL.")

    # Step 3: Read Data into Pandas DataFrame
    query = "SELECT * FROM employees;"
    df = pd.read_sql(query, conn)

    print("\nRaw Data from MySQL:")
    print(df.head())

    # Step 4: Data Cleaning
    df_cleaned = df.copy()
    df_cleaned['emp_name'] = df_cleaned['emp_name'].fillna('Unknown')
    df_cleaned['department'] = df_cleaned['department'].fillna('Not Assigned')

    # Calculate median salary for filling nulls
    median_salary = df_cleaned['salary'].median()
    df_cleaned['salary'] = df_cleaned['salary'].fillna(median_salary)

    df_cleaned['email'] = df_cleaned['email'].fillna('No Email')

    print("\nCleaned Data:")
    print(df_cleaned.head())

    # Step 5: Export Cleaned Data to Excel
    with pd.ExcelWriter(output_file, engine='xlsxwriter') as writer:
        df_cleaned.to_excel(writer, sheet_name='Cleaned_Data', index=False)

        # Add summary sheet
        summary = df_cleaned.groupby('department')['salary'].sum().reset_index()
        summary.to_excel(writer, sheet_name='Department_Salary_Summary', index=False)

    print(f"\nExcel report generated: {output_file}")

except Exception as ex:
    print(f"Error: {ex}")

finally:
    if 'conn' in locals():
        conn.close()
        print("MySQL connection closed.")
