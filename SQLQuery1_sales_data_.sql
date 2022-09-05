use [Company assignment];

select * from dbo.sales_data;

/* Total revenue generated by country */
select COUNTRY, YEAR_ID, SUM(SALES) as Total_revenue from dbo.sales_data group by COUNTRY, YEAR_ID;

/* total revenue generated Quarterly */
select COUNTRY, ORDERDATE, SUM(SALES) as total_sales from dbo.sales_data group by country,ORDERDATE;

/*  Total product sold */
select COUNTRY, YEAR_ID, COUNT(ORDERNUMBER) as no_of_product_sold from dbo.sales_data group by COUNTRY, YEAR_ID;

/* Quarterly revenue by productline*/
select COUNTRY, ORDERDATE, PRODUCTLINE, SUM(SALES) as total_revenue from dbo.sales_data group by ORDERDATE, PRODUCTLINE, SALES, COUNTRY;


/* total product sold by productline */
Select COUNTRY, COUNT(ORDERNUMBER) as no_of_Product_Sold, PRODUCTLINE from dbo.sales_data group by country, PRODUCTLINE;

/* Total revenue by productline */
select COUNTRY, PRODUCTLINE, SUM(SALES) as Total_revenue from dbo.sales_data group by COUNTRY, PRODUCTLINE;