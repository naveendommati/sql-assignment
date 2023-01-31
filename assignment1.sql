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
20) answer--select employee_id, count(team_id) over(partition by team_id) team_size from employee;
21) answer-- 
