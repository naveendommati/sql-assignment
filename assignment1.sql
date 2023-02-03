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
	select name, sum(ifnull(distance, 0)) as travelled_distance
from rides r
right join users u
on r.user_id = u.id
group by name
order by 2 desc,1 asc;
34) answer-- no order table in question;

35)answer-- SELECT user_name AS results FROM
(
SELECT a.name AS user_name, COUNT(*) AS counts FROM Movie_Rating AS b
    JOIN Users AS a
    on a.user_id = b.user_id
    GROUP BY b.user_id
    ORDER BY counts DESC, user_name ASC LIMIT 1
) first_query
UNION
SELECT movie_name AS results FROM
(
SELECT c.title AS movie_name, AVG(d.rating) AS rate FROM Movie_Rating AS d
    JOIN Movies AS c
    on c.movie_id = d.movie_id
    WHERE substr(d.created_at, 1, 7) = '2020-02'
    GROUP BY d.movie_id
    ORDER BY rate DESC, movie_name ASC LIMIT 1
) second_query;

36) answer---
select name, sum(ifnull(distance, 0)) as travelled_distance
from rides r
right join users u
on r.user_id = u.id
group by name
order by 2 desc,1 asc;
37) answer-- select unique_id, name
from Employees
left join EmployeeUNI
on if (Employees.id = EmployeeUNI.id, Employees.id, null);
38)answer---select s.id, s.name
from students s
left join departments d
on s.department_id = d.id
where d.id is null;

39) answer---
select from_id as person1,to_id as person2,
    count(duration) as call_count, sum(duration) as total_duration
from (select * 
      from Calls 
      
      union all
      
      select to_id, from_id, duration 
      from Calls) t1
where from_id < to_id
group by person1, person2;

40)answer--
select p.product_id, 
    round(sum(p.price * u.units)/sum(u.units), 2) as average_price
from Prices p
left join UnitsSold u
on p.product_id = u.product_id and 
    datediff(u.purchase_date, p.start_date) >= 0 and
    datediff(p.end_date, u.purchase_date) >= 0
group by p.product_id;

41)answer---
select name as warehouse_name, sum(units * vol) as volume
from Warehouse w
join (select product_id, Width*Length*Height as vol
     from Products) p
on w.product_id = p.product_id
group by name;
42) answer--
select a.sale_date, a.sold_num - b.sold_num
from Sales a left join Sales b
on a.sale_date = b.sale_date
where a.fruit = 'apples' and b.fruit = 'oranges';

43) answer--SELECT
round((count(distinct c.player_id) / (select count(distinct player_id) from activity)),2)as fraction
FROM
CTE c
JOIN Activity a
on c.player_id = a.player_id
and datediff(c.event_start_date, a.event_date) = -1;

44) answer--
select 
    a.name 
from 
    employee a 
inner join 
    employee b 
on (a.id = b.managerid) 
group by a.name 
having count(distinct b.id) >= 5;

45) answer---
SELECT dept_name, COUNT(student_id) AS student_number FROM
department AS d LEFT JOIN student AS s ON d.dept_id = s.dept_id
GROUP BY dept_name
ORDER BY student_number DESC, dept_name;
		
46) answer--
SELECT
    customer_id
FROM customer
GROUP BY customer_id
HAVING COUNT( DISTINCT product_key) = (SELECT COUNT(*) FROM product);

47) answer-- 
SELECT
    project_id,
    employee_id
FROM (
    SELECT
        p.project_id,
        p.employee_id,
        DENSE_RANK() OVER(PARTITION BY p.project_id ORDER BY e.experience_years DESC) as rnk
    FROM project as p JOIN employee as e
    ON p.employee_id = e.employee_id
    ) x
WHERE rnk = 1;

48)answer--
SELECT b.book_id, 
       b.NAME 
FROM   books AS b 
       LEFT JOIN orders AS o 
              ON b.book_id = o.book_id 
                 AND dispatch_date BETWEEN '2018-06-23' AND '2019-6-23' 
WHERE  Datediff('2019-06-23', b.available_from) > 30 
GROUP BY book_id 
HAVING Sum(IFNULL(o.quantity, 0)) < 10 ORDER  BY NULL ;

49) answer--
select student_id, min(course_id) as course_id, grade
from Enrollments
where (student_id, grade) in 
    (select student_id, max(grade)
    from Enrollments
    group by student_id)
group by student_id
order by student_id asc;

50) answer--
SELECT group_id, 
       player_id 
FROM   (SELECT p.group_id, 
               ps.player_id, 
               Sum(ps.score) AS score 
        FROM   players p INNER JOIN
               (SELECT first_player AS player_id, 
                       first_score  AS score 
                FROM   matches 
                UNION ALL 
                SELECT second_player AS player_id,
                       second_score  AS score
                FROM   matches) ps 
        ON  p.player_id = ps.player_id 
        GROUP  BY ps.player_id 
        ORDER  BY group_id, 
                  score DESC, 
                  player_id) top_scores 
GROUP  BY group_id;

