use AdventureWorksDW2016;
go 
select 
  Datekey, 
  FulldateAlternatekey as date, 
  EnglishDayNameOfWeek as Day, 
  WeekNumberOfYear as WeekNr, 
  EnglishMonthName as Month, 
  left(EnglishMonthName, 3) as monthshort, 
  MonthNumberOfYear as Year, 
  CalendarQuarter as Quarter, 
  CalendarYear as year 
from 
  dbo.dimdate 
where 
  CalendarYear >= 2019