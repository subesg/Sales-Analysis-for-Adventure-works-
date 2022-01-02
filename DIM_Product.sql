select top 10 * from dimproduct 
select top 10 * from dimproductsubcategory
select top 10 * from DimProductCategory

use AdventureWorksDW2016;
go 
select 
  p.productkey, 
  p.productalternatekey as ProductItemCode, 
  p.EnglishProductName as Productname, 
  ps.EnglishProductSubcategoryName as Subcategory, 
  pc.EnglishProductCategoryname as ProductCategory, 
  p.Color as ProductColor, 
  p.Size as productsize, 
  p.Productline, 
  p.ModelName as ProductModelName, 
  p.EnglishDescription as ProductDescription, 
  ISNULL(p.status, 'outdated') as productstatus 
from 
  dimproduct p 
  left join DimProductSubCategory ps ON ps.ProductSubcategorykey = p.ProductSubcategoryKey 
  left join DimproductCategory AS pc ON ps.ProductSubcategorykey = pc.productcategorykey 
order by 
  p.productkey asc



