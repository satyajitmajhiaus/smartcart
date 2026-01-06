select * from Products
select * from  Categories where ParentCategoryId is null
select * from Currencies


select * from Products where CategoryId in (select CategoryId from  Categories where ParentCategoryId = 142)
select * from  Categories
select * from Currencies

select CategoryId, count(CategoryId) from Products group by CategoryId 

--update Products set Stock = 5 where ProductId = 1

--delete from Categories where ParentCategoryId is not null 
--delete from Products

--truncate table Categories
--truncate table Products


