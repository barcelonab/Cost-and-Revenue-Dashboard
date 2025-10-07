# Sales-Summary-Report
**This is the first project I developed in my current role. It presents the monthly total revenue, costs and income together with product and customer data to highlight the top performers. Most of the products are seasonal, including BBQ grills and accessories for summer season and heaters, fireplaces, and logs for winter.**

**My Analysis Provided the following**

- Sales peaked in March, driven by customer preparations for the summer season.
- During that month, the top 10 purchased products can be identified, allowing us to increase inventory in advance of the period.
- After the high sales in March, there was a sudden drop in the succeeding month because people had already finished shopping for summer.
- Sales are catching up from September onwards because customers are getting ready for the winter season.
- During that month, the top 10 purchased products can be identified, allowing us to increase inventory in advance of the period.
- There is a balance between revenue, cost, and income.

**Here are the steps taken to complete the analysis**

- Created ODBC connection from Unidata to SQL Server.
- Created a Linked Server and view at the same time.
- Used SQL Server as the data source and choose view as table in Power BI Get Data.
- Created a Date Table and marked it as Date Table.
- Transformed and cleaned the categorical data using Power Query to keep the final report simple.
- Created several DAX measures for the desired metrics.
- Published, administered and created an App in Power BI Service for end users and business stakeholders.





**Creating ODBC Connection from Unidata to SQL Server**
- Install ODBC driver for Unidata, after installing go to ODBC Data Sources (64-bit).
- Add System DSN using U2 64-bit ODBC Driver
- Enter your credentials including your Database, User and Password.
- Test the connection and click ok.
- Test the connection and click ok.
  
  <img width="598" height="429" alt="image" src="https://github.com/user-attachments/assets/c51a56fe-43a0-46d7-b2b5-0c4cdf07731f" />


  
