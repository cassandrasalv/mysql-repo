-- Task 1
-- 23.299 from "SQL - MySQL for Data Analytics and Business Intelligence" course on Udemy
-- "Create a visualization that provides a breakdown between the male and female employees working in the company each year, starting from 1990." 


SELECT 
    YEAR(from_date) AS year,
    gender,
    COUNT(gender) AS number_of_employees
FROM
    t_employees e
        JOIN
    t_dept_emp de ON e.emp_no = de.emp_no
WHERE
    tde.from_date >= '1990-01-01'
GROUP BY year, gender
ORDER BY year ASC;
