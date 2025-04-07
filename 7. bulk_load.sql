create database newLoad ;

use newload ;

select * from dress ;

select * from bank ;

CREATE TABLE sales (
	order_id VARCHAR(15) NOT NULL, 
	order_date VARCHAR(15) NOT NULL, 
	ship_date VARCHAR(15) NOT NULL, 
	ship_mode VARCHAR(14) NOT NULL, 
	customer_name VARCHAR(22) NOT NULL, 
	segment VARCHAR(11) NOT NULL, 
	state VARCHAR(36) NOT NULL, 
	country VARCHAR(32) NOT NULL, 
	market VARCHAR(6) NOT NULL, 
	region VARCHAR(14) NOT NULL, 
	product_id VARCHAR(16) NOT NULL, 
	category VARCHAR(15) NOT NULL, 
	sub_category VARCHAR(11) NOT NULL, 
	product_name VARCHAR(127) NOT NULL, 
	sales DECIMAL(38, 0) NOT NULL, 
	quantity DECIMAL(38, 0) NOT NULL, 
	discount DECIMAL(38, 3) NOT NULL, 
	profit DECIMAL(38, 5) NOT NULL, 
	shipping_cost DECIMAL(38, 2) NOT NULL, 
	order_priority VARCHAR(8) NOT NULL, 
	`year` DECIMAL(38, 0) NOT NULL);
    
  
SET SESSION sql_mode = '';  

  
load data infile 
'F:/sales_data_final.csv'
into table sales
fields terminated by ','
lines terminated by '\n'
ignore 1 rows;   

select * from sales ;

CREATE TABLE sales_data (
    InvoiceNo INT,
    StockCode VARCHAR(20),
    `Description` VARCHAR(255),
    Quantity INT,
    InvoiceDate DATE,
    UnitPrice DECIMAL(10, 2),
    CustomerID INT,
    Country VARCHAR(100),
    Data_copy DATETIME,
    descrip VARCHAR(255)
);

desc sales_data ;

load data infile
"F:/Dataset/onlineretails.csv"
into table sales_data
fields terminated by ','
lines terminated by '\n'
ignore 1 rows;  

select * from sales_data ;
