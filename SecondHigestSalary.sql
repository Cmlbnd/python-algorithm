Second highest salary in 
+-------------+------+
| Column Name | Type |
+-------------+------+
| id          | int  |
| salary      | int  |
+-------------+------+

SELECT L2.Salary AS SecondHighestSalary
from
( SELECT 
    id, 
    Salary,
    dense_rank() OVER (PARTITION BY id order by Salary desc) as RN 
    from Employee
) L2
where RN = 1;
----------------------------------------
WITH rank_salary as 
(SELECT id,
    salary ,
 dense_rank() OVER(ORDER BY salary desc) as salary_rank 
 from employee)

SELECT MAX(salary) as SecondHighestSalary FROM rank_salary where salary_rank=2;

-------------------------------------------
SELECT
    (SELECT DISTINCT Salary
        FROM Employee
        ORDER BY Salary DESC
        LIMIT 1 OFFSET 1) AS SecondHighestSalary;
