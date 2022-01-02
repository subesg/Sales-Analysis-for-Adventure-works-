use AdventureWorksDW2016;
go 
select 
  c.customerkey, 
  c.FirstName, 
  c.LastName, 
  c.FirstName + ' ' + c.LastName as FullName, 
  case gender when 'M' Then 'Male' when 'F' Then 'Female' End as Gender, 
  c.DateFirstPurchase, 
  g.city 
from 
  DimCustomer c 
  left join DimGeography g on c.geographykey = g.GeographyKey 
order by 
  customerkey