--SALES FOR THE YEAR OF 2025 BY MONTH	
WITH MonthlySales AS (
    SELECT
        MONTH(so_date) AS SalesMonth,
        DATENAME(MONTH, so_date) AS MonthName,
        SUM(Ln_Del_Ext_Price) AS TotalSales
    FROM 
		vw_SOD
    WHERE 
		YEAR(so_date) = '2025'
    GROUP BY 
		MONTH(so_date), 
		DATENAME(MONTH, so_date)
)
SELECT 
    MonthName,
    TotalSales,
    LAG(TotalSales) OVER (ORDER BY SalesMonth) AS PreviousMonthSales,
    TotalSales - LAG(TotalSales) OVER (ORDER BY SalesMonth) AS Difference
FROM 
	MonthlySales
ORDER BY
	SalesMonth

USE ReportPBI;
GO
--SALES FOR 2024 AND 2025 BY MONTH AND YEAR
WITH YearlySales AS (
    SELECT
		YEAR(so_date) as SalesYear,
        MONTH(so_date) AS SalesMonth,
        DATENAME(MONTH, so_date) AS MonthName,
        SUM(Ln_Del_Ext_Price) AS TotalSales
    FROM 
		vw_SOD
    GROUP BY 
		YEAR(so_date),
		MONTH(so_date), 
		DATENAME(MONTH, so_date)
)
SELECT
	SalesYear,
    MonthName,
    TotalSales,
    LAG(TotalSales) OVER (Partition by SalesMonth Order BY SalesYear) AS PreviousYearSales,
    TotalSales - LAG(TotalSales) OVER (Partition by SalesMonth Order BY SalesYear) AS Difference
FROM
	YearlySales
ORDER BY
	SalesYear,
	SalesMonth