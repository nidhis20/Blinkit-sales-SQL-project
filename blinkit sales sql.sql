create database blinkit;
use blinkit;
show databases;
show tables;

select table_name from 
information_schema.tables where table_schema = 'blinkit';

rename table blinkit_grocer_data to blinkit_data;
show tables like "blinkit_grocer_data";
create database blinkit;
drop database blinkit;
create database blinkit;
use blinkit;
show tables;
select * from blinkit_data;

select count(*) from blinkit_data;

update blinkit_data
set Item_Fat_Content = 
case
when Item_Fat_Content in ('LF' , 'low fat') then 'Low Fat'
when Item_Fat_Content = 'reg'then 'Regular'
else Item_Fat_Content
end;

select distinct(Item_Fat_Content) from blinkit_data;

select cast( sum(Sales)/1000000 as decimal(10,2)) as total_sales_millouns  from blinkit_data
where Outlet_Establishment_Year = 2022;

select cast(avg(Sales)as decimal(10,2)) as avg_sales from blinkit_data;

select count(*) as no_of_items from blinkit_data;

select cast( avg(Rating) as decimal(10,2)) avg_rating from blinkit_data;

select  Item_Type,
cast( sum(Sales) as decimal(10,2)) as total_sales,
cast(avg(Sales) as decimal(10,2)) as avg_sales,
count(*) as n0_of_items,
cast(avg(Rating) as decimal(10,2)) as avg_rating
 from blinkit_data
group by Item_Type
order by Sales desc;

select  Outlet_Location_Type, Item_Fat_Content,
cast( sum(Sales) as decimal(10,2)) as total_sales,
cast(avg(Sales) as decimal(10,2)) as avg_sales,
count(*) as n0_of_items,
cast(avg(Rating) as decimal(10,2)) as avg_rating
 from blinkit_data
group by Item_Type
order by Sales desc;

select * from blinkit_data;










