-- failing query
select * 
	from employees 
	where salary > AVG(salary);

-- sub-select to retrieve all employees whose salary is great than average
select EMP_ID, F_NAME, L_NAME, SALARY
	from EMPLOYEES 
	where SALARY < (select AVG(SALARY) from EMPLOYEES);
	
-- failing query
select EMP_ID, SALARY, AVG(SALARY) AS AVG_SALARY 
	from employees ;

-- Enter a Column Expression that retrieves all employees records and average salary in every row
select EMP_ID, SALARY, (select AVG(SALARY) from EMPLOYEES) AS AVG_SALARY 
	from employees;

-- Enter a Table Expression that retrieves only the columns  with non-sensitive employee data
select * 
	from ( select EMP_ID, F_NAME, L_NAME, DEP_ID from employees) 
	AS EMP4ALL ;

-- Retrieve only the EMPLOYEES records that correspond to departments in the 
-- DEPARTMENTS table
select *
	from EMPLOYEES, DEPARTMENTS
	where EMPLOYEES.DEP_ID = DEPARTMENTS.DEPT_ID_DEP;
	
-- Use shorter aliases for table names
select *
	from EMPLOYEES E, DEPARTMENTS D
	where E.DEP_ID = D.DEPT_ID_DEP;

-- Retrieve only the Employee ID and Department name in the above query
select EMP_ID, DEP_NAME
	from EMPLOYEES E, DEPARTMENTS D
	where E.DEP_ID = D.DEPT_ID_DEP;

-- In the above query specify the fully qualified column names with aliases in the SELECT clause
select E.EMP_ID, D.DEP_NAME 
	from employees E, departments D 
	where E.DEP_ID = D.DEPT_ID_DEP;