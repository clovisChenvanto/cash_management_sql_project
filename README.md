\# Beginner Cash Management SQL Project



This project simulates a corporate treasury management database used to monitor cash balances, bank account activity, and treasury transactions across multiple currencies. The project was built using SQLite and focuses on core SQL concepts including relational database design, joins, aggregation, filtering, and treasury-style financial reporting.



\## Technologies Used

\- SQLite

\- DB Browser for SQLite

\- SQL



\## Database Structure

\### Tables



\#### bank\_accounts

Stores bank account information.

Columns:

\- account\_id

\- bank\_name

\- account\_number

\- currency

\- opening\_balance



\#### transactions

Stores cash movements and transaction activity.



Columns:

\- transaction\_id

\- account\_id

\- transaction\_date

\- transaction\_type

\- amount

\- description



\## Key SQL Concepts Used

\- Primary Keys

\- Foreign Keys

\- INNER JOIN

\- LEFT JOIN

\- GROUP BY

\- Aggregate Functions

\- NULL Handling

\- Filtering with WHERE

\- Sorting with ORDER BY



\## Business Questions Solved

1\. What is the current cash balance by bank account?

* BNP Paribas has 320000 EUR
* Deutsche Bank has 285000 EUR
* HSBC has 225000 GBP
* JPMorgan Chase has 380000 USD 



2\. What is the total cash position by currency?

* total of 605000 EUR, 225000 GBP and 380000 USD



3\. Which transactions are unusually large (>30000)?

* Client payment deposit of 50000 EUR and
* Bond proceeds deposit of 75000 USD



4\. Which bank accounts have no transactions?

BNP Paribas



\## Files

\- schema.sql → database structure

\- sample\_data.sql → sample treasury data

\- queries.sql → treasury analytics queries

\- treasury.db → SQLite database file



