use AdventureWorksDW2016;
go 
select 
  productkey, 
  orderdatekey, 
  duedatekey, 
  shipdatekey, 
  customerkey, 
  salesordernumber, 
  SalesAmount 
from 
  FactInternetSales 
where 
  left(OrderDateKey, 4) = year(
    getdate()
  ) -2
