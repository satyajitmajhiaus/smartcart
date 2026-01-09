select *,SearchVector from Products where PopularityScore >= 90 --Name like '%test%' order by CreatedAt desc
select * from  Categories where name  like '%Computers & Laptops%'  -- ParentCategoryId is null
select * from Currencies
SELECT * FROM Products where SearchVector like '%samsung%'

select DISTINCT Suggestion from
	(SELECT DISTINCT name AS Suggestion FROM Products 
	UNION SELECT DISTINCT name AS Suggestion FROM Categories
	) S where S.Suggestion like '%hel%';

SELECT * FROM Products P inner join Categories C on P.CategoryId = C.CategoryId 
		where SearchVector like '%Computers & Laptops%' or C.Name like '%Computers & Laptops%'
		or p.CategoryId in (select C.CategoryId from Categories C 
								inner join Categories P on C.ParentCategoryId = P.CategoryId 
								where P.Name like '%Computers & Laptops%')

SELECT distinct name FROM Products --where SearchVector like '%samsung%'
SELECT distinct Tags FROM Products
SELECT distinct name FROM Categories

select * from Products where CategoryId in (select CategoryId from  Categories where ParentCategoryId = 142)
select * from  Categories
select * from Currencies

select CategoryId, count(CategoryId) from Products group by CategoryId 

--update Products set Stock = 5 where ProductId = 1

--delete from Categories where ParentCategoryId is not null 
--delete from Products

--truncate table Categories
--truncate table Products


