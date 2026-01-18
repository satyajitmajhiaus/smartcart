select *,SearchVector from Products where PopularityScore >= 90 --Name like '%test%' order by CreatedAt desc
select * from  Categories where name  like '%Computers & Laptops%'  -- ParentCategoryId is null
select * from Currencies
SELECT * FROM Products order by ProductId desc -- where SearchVector like '%samsung%'
select * from Users

-- Homeproducts ith pagination
SELECT * FROM Products WHERE PopularityScore >= 80 ORDER BY PopularityScore DESC OFFSET 24 ROWS FETCH NEXT 24 ROWS ONLY;

--related
SELECT DISTINCT P.*
	FROM Products P
	JOIN STRING_SPLIT(
	(SELECT Tags FROM Products WHERE ProductId = 85), ',') T
	ON P.Tags LIKE '%' + T.value + '%' WHERE P.CategoryId = (SELECT CategoryId FROM Products WHERE ProductId = 85) AND P.ProductId <> 85; 

	SELECT @@VERSION;


insert into Users (Username,PasswordHash,Email,Role,CreatedAt) values 
('Satya',HASHBYTES('SHA2_256', 'sc@2026'),'Satya@gmail.com','User',GETDATE())
insert into Users (Username,PasswordHash,Email,Role,CreatedAt) values 
('Satyajit',HASHBYTES('SHA2_256', 'sc@2026'),'Satyajit@gmail.com','Admin',GETDATE())
update Users set PasswordHash = HASHBYTES('SHA2_256', 'sc@2026')

SELECT COUNT(1) FROM Users 
                          WHERE username = 'Satyajit' AND PasswordHash = HASHBYTES('SHA2_256', 'smpass@2026') AND Role = 'Admin' AND IsActive = 1
SELECT COUNT(1) FROM Users 
	WHERE username = 'Satya' AND PasswordHash = HASHBYTES('SHA2_256', 'sc@2026') 
		AND Role = 'user' AND IsActive = 1
SELECT COUNT(1) FROM Users 
     WHERE username = 'Satyajit' AND PasswordHash = HASHBYTES('SHA2_256', 'sc@2026') 
		AND Role = 'admin' AND IsActive = 1

select DISTINCT Suggestion from
	(SELECT DISTINCT name AS Suggestion FROM Products 
	UNION SELECT DISTINCT name AS Suggestion FROM Categories
	) S where S.Suggestion like '%hel%';

SELECT * FROM Products P inner join Categories C on P.CategoryId = C.CategoryId 
		where SearchVector like '%Computers & Laptops%' or C.Name like '%Computers & Laptops%'
		or p.CategoryId in (select C.CategoryId from Categories C 
								inner join Categories P on C.ParentCategoryId = P.CategoryId 
								where P.Name like '%Computers & Laptops%')

SELECT DISTINCT P.*
FROM Products P
JOIN STRING_SPLIT(
    (SELECT Tags FROM Products WHERE ProductId = 1), ','
) T
    ON P.Tags LIKE '%' + T.value + '%'
WHERE P.CategoryId = (SELECT CategoryId FROM Products WHERE ProductId = 1)
  AND P.ProductId <> 1;


select Tags from Products where productid = 1

SELECT distinct name FROM Products --where SearchVector like '%samsung%'
SELECT distinct Tags FROM Products
SELECT distinct name FROM Categories

select * from Products where CategoryId in (select CategoryId from  Categories where ParentCategoryId = 142)
select * from  Categories
select * from Currencies

select CategoryId, count(CategoryId) from Products group by CategoryId 

--update Products set Stock = 5 where ProductId = 1

--delete from Categories where ParentCategoryId is not null 
--delete from Products where tags like '%shoes%'

--truncate table Categories
--truncate table Products


