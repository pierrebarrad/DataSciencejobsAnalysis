-- Active: 1662861510507@@127.0.0.1@3306
--check data 
select * from ds_salaries;

EXPLAIN SELECT * FROM ds_salaries;

-- checking unique vaulues
select DISTINCT work_year from ds_salaries;
select DISTINCT job_title from ds_salaries;
select DISTINCT employment_type from ds_salaries;
select DISTINCT company_location from ds_salaries;
select DISTINCT company_size from ds_salaries;


-- number of rows
select COUNT(*) from ds_salaries;

-- total salaries paid
select sum(salary) from ds_salaries;

-- total in foregin currency
select sum(salary_in_usd) from ds_salaries;

select  salary_currency, SUM(salary_in_usd) FROM ds_salaries;


-- min salary paid for jobs in DESC
select min(salary),job_title from ds_salaries GROUP BY job_title ORDER BY salary DESC;;
SELECT max(salary), job_title from ds_salaries GROUP BY job_title ORDER BY salary DESC;


-- countries paying the highest salaries 
SELECT max(salary), company_location from ds_salaries GROUP BY company_location ORDER BY salary DESC;

--role with the 
select AVG(salary_in_usd) FROM ds_salaries;

select sum(salary), COUNT() from ds_salaries;

select * from ds_salaries LIMIT 5;


-- minimum and maximum salaries paid by size of companies
SELECT MIN(salary), MAX(salary), company_size FROM ds_salaries GROUP BY company_size;

-- minimum and maximum salaries paid by size of companies
SELECT MIN(salary), MAX(salary), company_location FROM ds_salaries GROUP BY company_location;


-- minimum and maximum salaries paid by experience level
SELECT MIN(salary), MAX(salary), experience_level FROM ds_salaries GROUP BY experience_level;

