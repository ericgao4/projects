import sqlite3
import sys
# sys.argv[1] is the name of the music library
name_of_database = sys.argv[1]
connection = sqlite3.connect(name_of_database + '.db')
cursor = connection.cursor()
cursor.execute('''CREATE TABLE COMPANY
         (ID INT PRIMARY KEY     NOT NULL,
         NAME           TEXT    NOT NULL,
         AGE            INT     NOT NULL,
         ADDRESS        CHAR(50),
         SALARY         REAL);''')

