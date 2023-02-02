 create table city
    (ID int, NAME VARCHAR(17),COUNTRYCODE varchar(3),
    DISTRICT varchar(20),
    POPULATION int);
   select * from city;
  1) answer-- select * from city where COUNTRYCODE ='USA' and POPULATION >100000;
  2) answer-- select NAME from city where COuNTRYCODE ='USA' AND POPULATION >120000;
  3) answer-- select * from city;
  4)answer--  select * from city where ID =1661;
  5)answer -- select * from city where COUNTRYCODE= 'JPN';
  6)answer-- select NAME from city where COUNTRYCODE ='JPN';
  7)answer-- select City, State from Station;
  8)answer--select DISTINCT city FROM station WHERE MOD(ID,2)=0 ORDER BY City; 
  9)answer--select count(city)- count(DISTINCT CITY) from station;
  10)answer--select city, length(city) from station order by length(city) DESC,city ASC fetch first row only;
             select city, length(city) from station order by length(city) asc ,city asc fetch first row only; 
  11)answer--select DISTINCT(CITY) from station WHERE City LIKE 'A%' OR City LIKE 'E%' OR City LIKE 'I%' OR City LIKE 'O%' 
             OR City LIKE 'U%' ORDER by City;
  12) answer--SELECT DISTINCT(CITY) FROM STATION WHERE CITY LIKE '%a' OR CITY LIKE '%e' OR CITY LIKE '%i' OR CITY LIKE '%o' 
              OR CITY LIKE '%u' order by city; 
   13) answer-- SELECT DISTINCT CITY FROM STATION WHERE upper(SUBSTR(CITY,1,1)) NOT IN ('A','E','I','O','U') AND lower(SUBSTR(CITY,1,1)) NOT IN('a','e','i','o','u'); 
   14)answer--SELECT DISTINCT CITY FROM STATION WHERE UPPER(SUBSTR(CITY, LENGTH(CITY), 1)) NOT IN ('A','E','I','O','U') AND LOWER(SUBSTR(CITY, LENGTH(CITY),1)) NOT IN ('a','e','i','o','u');    
   15)answer--SELECT DISTINCT CITY FROM STATION WHERE LOWER(SUBSTR(CITY,1,1)) NOT IN ('a','e','i','o','u') OR LOWER(SUBSTR(CITY, LENGTH(CITY),1)) NOT IN ('a','e','i','o','u');   
   16)answer--SELECT DISTINCT CITY FROM STATION WHERE LOWER(SUBSTR(CITY,1,1)) NOT IN ('a','e','i','o','u') AND LOWER(SUBSTR(CITY,LENGTH(CITY),1)) NOT IN ('a','e','i','o','u');    
   17)answer--SELECT product_id, product_name FROM   product WHERE  product_id NOT IN (SELECT product_id FROM   sale WHERE  sale_date NOT BETWEEN '2019-01-01' AND '2019-03-31'); 
18)select author_id as id
from Views
where author_id = viewer_id
group by author_id
order by author_id asc
19) answer -- select round((select count(*) from Delivery where order_date = customer_pref_delivery_date) / (count(delivery_id)) * 100 , 2)
as immediate_percentage from Delivery;
21) answer--select employee_id, count(team_id) over(partition by team_id) team_size from employee;
22) answer-- select country_name, case when avg(weather_state) <= 15 then "Cold"
23) answer-- SELECT a.product_id
	, round(SUM(a.units * b.price) / SUM(a.units), 2) AS average_price
FROM UnitsSold a
	JOIN Prices b
	ON (a.product_id = b.product_id
		AND a.purchase_date >= b.start_date
		AND a.purchase_date <= b.end_date)
group by product_id
                          when avg(weather_state) >= 25 then "Hot"
                          else "Warm" end as weather_type from countries 
inner join weather on countries.country_id = weather.country_id where left(day, 7) = '2019-11'
group by country_name;
24) answer --  select player_id, min(event_date)as first_login from activity group by player_id;
25) answer-- SELECT
player_id,
event_date,
dense_rank() OVER (PARTITION BY player_id order by event_date) as denserank_date
FROM
Activity ) as rank_date
WHERE denserank_date = 1;

26) answer--select a.product_name, sum(unit) as unit
from Products a
left join Orders b
on a.product_id = b.product_id
where b.order_date between '2020-02-01' and '2020-02-29'
group by a.product_id
having sum(unit) >= 100;

27) answer-- SELECT *
FROM Users
WHERE REGEXP_LIKE(mail, '^[a-zA-Z][a-zA-Z0-9\_\.\-]*@leetcode.com');

28) answer-- SELECT a.customer_id,
       a.name
FROM Customers AS a
INNER JOIN
  (SELECT *
   FROM Orders
   WHERE order_date BETWEEN "2020-06-01" AND "2020-07-31" ) AS b
ON a.customer_id = b.customer_id
INNER JOIN Product AS c
ON b.product_id = c.product_id
GROUP BY a.customer_id
HAVING SUM(CASE
               WHEN LEFT(b.order_date, 7) = "2020-06" THEN c.price * b.quantity
               ELSE 0
           END) >= 100
AND    SUM(CASE
               WHEN LEFT(b.order_date, 7) = "2020-07" THEN c.price * b.quantity
               ELSE 0
           END) >= 100
ORDER BY NULL;
29) answer--- select distinct title
from Content 
join TVProgram using(content_id)
where kids_content = 'Y' 
	and content_type = 'Movies' 
	and (month(program_date), year(program_date)) = (6, 2020);
	
30) answer--
select NPV.* from NPV left join
Queries on NPV.id = Queries.id and NPV.year = Queries.year;

31) answer-- select NPV.* from NPV left join
Queries on NPV.id = Queries.id and NPV.year = Queries.year;

32) answer-- select unique_id, name
from Employees
left join EmployeeUNI
on if (Employees.id = EmployeeUNI.id, Employees.id, null);

33) answer-- 
	
