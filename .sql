--Retrieve all data from table

SELECT * FROM `intrepid-decker-394518.my_NIYO.hr_dataset`;

-- Retrieve employee id, employee name, position, department and salary
SELECT EmpID, Employee_Name, Position, Department, Salary
FROM `intrepid-decker-394518.my_NIYO.hr_dataset`;

-- Retrieve employee id, date of birth, sex
SELECT EmpID, DOB, Sex
FROM `intrepid-decker-394518.my_NIYO.hr_dataset`;

--Retrieve employee ID, position and rename maritaldesc
--ALIAS IS NOT A PERMANENT CHANGE. WE USE ALIAS TO RENAME A PARTICULAR COLUMN
SELECT EmpID, Position, MaritalDesc AS MaritalStatus
FROM `intrepid-decker-394518.my_NIYO.hr_dataset`;

-- We can use distinct to find out how many rows of data we have in our dataset.
SELECT DISTINCT State FROM `intrepid-decker-394518.my_NIYO.hr_dataset`;

--to retrieve distinct positions
SELECT DISTINCT Position FROM `intrepid-decker-394518.my_NIYO.hr_dataset`;

-- Retrieve employees who have a salary greater than 100,000. Here we introduce the function 'WHERE' we use this whenever we want to filter our dataset
SELECT * FROM `intrepid-decker-394518.my_NIYO.hr_dataset`
WHERE Salary > 100000;

-- Retrieve employees who have a salary less than $50,000
SELECT * FROM `intrepid-decker-394518.my_NIYO.hr_dataset`
WHERE Salary < 50000

-- Retrieve employees who work as a software engineer
SELECT * FROM `intrepid-decker-394518.my_NIYO.hr_dataset`
WHERE Position = 'Software Engineer'

-- Retrieve all female employees
SELECT * FROM `intrepid-decker-394518.my_NIYO.hr_dataset`
WHERE Sex = 'F'

-- Retreive all black or african employees
SELECT * FROM `intrepid-decker-394518.my_NIYO.hr_dataset`
WHERE RaceDesc = 'Black or African American'

--Retrieve all that are not us citizens
SELECT * FROM `intrepid-decker-394518.my_NIYO.hr_dataset`
WHERE CitizenDesc != 'US Citizen'

--Using AND operator
-- Retrieve employees from diversity hire and are black or african employess
SELECT * FROM `intrepid-decker-394518.my_NIYO.hr_dataset`
WHERE RaceDesc = 'Black or African American' AND FromDiversityJobFairID = 1;

-- Retrieve employees that GREATER THAN 100,000 and are NOT white
SELECT * FROM `intrepid-decker-394518.my_NIYO.hr_dataset`
WHERE Salary > 100000 AND RaceDesc != 'White'; 

-- Retrieve employees that are married and earning above 60000 and female
SELECT * FROM `intrepid-decker-394518.my_NIYO.hr_dataset`
WHERE Salary > 60000 AND MaritalDesc = 'Married' AND Sex = 'F';

-- Retrieve employees that are currently active and work in production
SELECT * FROM `intrepid-decker-394518.my_NIYO.hr_dataset`
WHERE EmploymentStatus ='Active' AND Department = 'Production';

-- Retrieve employees who work as a data analyst and are female
SELECT * FROM `intrepid-decker-394518.my_NIYO.hr_dataset`
WHERE Position = 'Data Analyst' AND Sex = 'F';

-- Using 'OR' lOGICAL OPERATOR
-- Retrieve employees from diversity hire or are black or african employess
SELECT * FROM `intrepid-decker-394518.my_NIYO.hr_dataset`
WHERE RaceDesc = 'Black or African American' OR FromDiversityJobFairID = 1;

-- Retrieve employees that GREATER THAN 100,000 OR are NOT white
SELECT * FROM `intrepid-decker-394518.my_NIYO.hr_dataset`
WHERE Salary > 100000 OR RaceDesc != 'White'; 

-- Retrieve employees that are married OR earning above 60000 OR female
SELECT * FROM `intrepid-decker-394518.my_NIYO.hr_dataset`
WHERE Salary > 60000 OR MaritalDesc = 'Married' OR Sex = 'F';

-- Retrieve employees that are currently active OR work in production
SELECT * FROM `intrepid-decker-394518.my_NIYO.hr_dataset`
WHERE EmploymentStatus ='Active' OR Department = 'Production';

-- Retrieve employees who work as a data analyst or are female
SELECT * FROM `intrepid-decker-394518.my_NIYO.hr_dataset`
WHERE Position = 'Data Analyst' OR Sex = 'F';

--Retrieve employees that are (married OR female) and earning above 60000
-- when combining and/or statements, you need to use brackets
SELECT * FROM `intrepid-decker-394518.my_NIYO.hr_dataset`
WHERE (MaritalDesc = 'Married' OR Sex = 'F') AND Salary > 60000;
