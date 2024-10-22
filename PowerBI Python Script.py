#EDIT THIS SCRIPT ACCORING TO YOUR SQL SERVER
#THEN OPEN POWER BI DASHBOARD FILE(PBIX) ---> Transform Data ---> Python Script ---> COPY PASTE
#CHANGE USER AND PASSWORD
#set user and password according to your sql server

import mysql.connector
import pandas as pd
con=mysql.connector.connect(
    host="localhost",
    user="root",
    password="system",
    database="expense_tracker"
)
c=con.cursor()
c.execute("Select * from expenses")
data=c.fetchall()
df=pd.read_sql_query("Select * from expenses",con)
print(df)
