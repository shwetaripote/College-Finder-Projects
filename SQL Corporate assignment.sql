/*1. Create a database called CollegeFinder and make the below table as Workers.
Set EmpId as the primary key. Copy the dataset into another data set and name that dataset as 
“Workers_copy” . Change the data type for “SalaryLPA” to “string” in table 
“Workers_copy”. 
EmpId FirstName LastName SalaryLPA
CF111 Harry Singh 5.5
CF112 Siddharth Kumar 6.0
CF113 Ashwini Grower 4.5
CF114 Jack Musk 5.*/


CREATE database CollegeFinder;
SHOW databases;
USE CollegeFinder;

CREATE table Workers(EmpId VARCHAR(10) primary key, 
                     Firstname VARCHAR(20),
                     LastName VARCHAR(20),
                     salaryLPA double);
INSERT INTO Workers Values('CF111','Marry','Singh',5.5);
INSERT INTO Workers Values('CF112','Siddarth','Kumar',6.0);
INSERT INTO Workers Values('CF113','Ashwini','Grower',4.5);
SELECT * FROM Workers;


CREATE table Workers_copy SELECT EmpID, FirstName, LastName, salaryLPA FROM Workers;
SELECT * FROM Workers_copy;
DESCRIBE Workers_copy
ALTER table Workers_copy MODIFY salaryLPA VARCHAR(5);


a.)What should be the primary key of each table? Product_ID
SELECT * FROM class2;

b) Print all the records from table class2
DESCRIBE class2;

b) Alter the Location field from TEXT to VARCHAR(10) in table practice.
ALTER table practice MODIFY Location VARCHAR(10);
DESCRIBE practice;

c) How many characters does the Product have where Product_ID=4082273 in table class2?
SELECT char_length(Product) FROM class2 WHERE Product_ID=4082273;

d) Print all the records with Risk_type=’B’ in table practice.
SELECT * FROM practice WHERE Risk_type='B'; 

a)What shall be the primary key in this table? Customer ID
USE CollegeFinder;

 b) Write Query to update the “Country” field by updating column value “UK” to “United Kingdom” and “USA” to “US”
UPDATE customers SET Country = 'United Kingdom' WHERE Country='UK';
UPDATE customers SET Country = 'US' WHERE Country='USA';
SELECT * FROM customers;

c) Delete rows from the table where City is “Madrid” or “Vancouver”
DELETE FROM customers WHERE city='Madrid' or city='Vancouver';
SELECT * FROM customers;

d)Change the datatype of “CustomerID” from existing to float
ALTER table customers MODIFY CustomerID float;
DESCRIBE customers;

e) Add a new column to this table called “Old_Customer_Flag” and set a default value “Yes” to all records. 
ALTER table customers add  Old_Customer_Flag VARCHAR(10) default('YES');
SELECT * FROM customers;

SELECT * FROM collegefinder.pets;

a) To fetch unique values of “Age” field
SELECT DISTINCT Age FROM pets;

b) To fetch unique combinations of Gender and Age column
SELECT DISTINCT gender, age FROM pets;

c) To fetch the names of the pets whose name contains letter “u” in the name
SELECT name FROM pets WHERE name like ('%u%');

d) To fetch count of rows for each “Kind” present in the table 
SELECT COUNT(DISTINCT kind) FROM pets;

e) To find the average age of each “Kind” of pets
SELECT kind,avg(age) FROM pets group by kind;

f) To print all records where Gender = “Female” and Kind = “Dog” 
SELECT * FROM pets WHERE Gender = 'Female' and  Kind = 'Dog';

g) To find the count of records for a combination of “Kind” and “Gender”
SELECT kind, Gender, COUNT(Kind and Gender) FROM pets GROUP BY kind,Gender;

 h) To fetch all the records and order them by Gender ascending and Age descending
SELECT *  FROM pets ORDER BY Gender, Age DESC;

i) To fetch all the “Kind” values that have maximum age greater than 13 
SELECT Kind, MAX(Age) FROM pets GROUP BY Kind HAVING MAX(Age)>13;

j) To fetch the 15 records from the table 
SELECT * FROM pets LIMIT 15;

k) To fetch the names that have 5 letters in their name 
SELECT name FROM pets WHERE name like '_____';

l) To fetch the count of distinct “Age” in the table 
SELECT COUNT(DISTINCT Age) FROM pets;

m) To fetch the records where Age is between 5 and 15
SELECT * FROM pets WHERE Age BETWEEN 5 and 15 

SELECT * FROM collegefinder.employees;
-- PK is employee_id

a) Find the length of field email
USE CollegeFinder;
SELECT email, length(email) FROM employees;

b) Find count of employees in each department_id
SELECT department_id, COUNT(employee_id) FROM employees GROUP BY department_id ORDER BY department_id;

c) To replace “sqltutorial.org” with “collegefinderindia.com” present in Email column
SELECT *, replace(email,'sqltutorial.org','collegefinderindia.com') as 'replaced' FROM employees;

d) To combine First Name and Last Name of employees and create another column called Full Name. Combine both the names in the format. (Last Name, First Name)
SELECT first_Name, last_Name, CONCAT(last_name,' ',first_name) as 'Full_Name' FROM employees; 
