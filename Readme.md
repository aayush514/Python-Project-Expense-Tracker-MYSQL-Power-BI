## Expense Tracker Project

# Project Overview
-> The Expense Tracker project allows users to track and manage their daily expenses, visualize the data in Power BI, and interact with the data via Python and MySQL. The users can import/export data in CSV/Excel formats, with full flexibility to customize the MySQL server settings (host, user, password). This README outlines how to set up, run, and modify the project components.

# Project Structure

-> Python: Python is used for connecting with MySQL, processing data, and providing an interface for users to export and import expenses in CSV/Excel format.

-> SQL: MySQL is the backend database for storing all expense-related data. The SQL script provided (Expense_Tracker_db.sql) creates the necessary tables.

-> Power BI: Power BI is used for visualizing the expense data. Users can run Python scripts within Power BI to dynamically load the latest expense data from the MySQL database.

# Key Features

1. Add Expenses: Users can log expenses directly into the MySQL database via a Python interface.

2. Visualize in Power BI: The expense data can be visualized in Power BI, offering charts and insights based on the expenses.

3. Export/Import Data: Users can export and import expenses in CSV/Excel format for backup or bulk uploads.

4. Database Connectivity: Users can change the MySQL host, user, and password in both Python and Power BI scripts to match their own SQL server settings.

# Setup and Configuration

1. Database Setup
-> Use the Expense_Tracker_db.sql script to create the required tables in your MySQL server.
        To execute:
                    mysql -u yourUsername -p yourPassword < Expense_Tracker_db.sql

2. Python Environment Setup
-> Install the necessary Python packages:
                    pip install mysql-connector-python pandas

-> Update the MySQL connection details in the Python script:

    PowerBI Python Script (PowerBI Python Script.py)

-> import mysql.connector
-> import pandas as pd

con = mysql.connector.connect(
    host="your_host",
    user="your_username",
    password="your_password",
    database="expense_tracker"
)

->  Replace your_host, your_username, and your_password with your MySQL server details.
-> Running the Script: Use this Python script to fetch expense data, manipulate it, and export/import files.

3. Power BI Setup

-> Open the provided Power BI dashboard file Expense_PBI.pbix.
-> Go to Transform Data → Python Script.
-> Paste the contents of PowerBI Python Script.py to connect Power BI to your MySQL database, as seen in (PowerBI Python Script).
-> Update the host, user, and password as needed for your SQL server.

# CSV/Excel Import/Export

-> Exporting Data to CSV/Excel
    Python provides the functionality to export the fetched data from MySQL to a CSV or Excel file:
                df.to_csv("expenses.csv", index=False)
                df.to_excel("expenses.xlsx", index=False)
-> Importing Data from CSV/Excel
    To import data from a CSV or Excel file back into the database:
                df = pd.read_csv("expenses.csv")
                for index, row in df.iterrows():
                    c.execute("INSERT INTO expenses (column1, column2, ...) VALUES (%s, %s, ...)", tuple(row))
                    con.commit()

## MySQL Connection Customization

-> You need to update the host, user, and password in both the Python script and the Power BI dashboard script whenever you switch to a different SQL server. The details can be found in:

1) Python Script: Edit directly in the PowerBI Python Script.py.
2) Power BI: After opening the .pbix file, go to Transform Data → Advanced Editor in the query editor to update the Python script accordingly.

## Running the Project

1) Set up the MySQL database using the provided SQL script.
2) Configure Python to fetch data from the database.
3) Open Power BI and load the latest expense data by running the Python script within Power BI.
4) View and Analyze your expenses using Power BI's visualizations.

## Files Included

1) Expense Tracker.ipynb: Jupyter Notebook for interacting with the Expense Tracker in Python.
2) Expense_Tracker_db.sql: SQL script to set up the database schema.
3) Expense_PBI.pbix: Power BI dashboard for visualizing expenses.
4) PowerBI Python Script.py: Python script for connecting Power BI to MySQL and fetching data.

## Libraries

-> import mysql.connector
-> import pandas as pd
-> import re
-> import getpass as g
-> from datetime import date
-> import numpy as np
-> from sqlalchemy import create_engine

## Installed Necessary Libraries

->!pip install mysql
->!pip install mysql-connector-python
->!pip install pymysql
->!pip install pandas
->!pip install pandas sqlalchemy pymysql

## Contribution Guidelines

-> Feel free to fork this project and customize it according to your needs. Make sure to update the MySQL connection details when necessary.