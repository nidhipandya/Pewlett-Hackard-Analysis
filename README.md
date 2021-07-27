# Pewlett-Hackard-Analysis

## Overview of the analysis
The purpose of this analysis is to determine the number of retiring employees from employee database of Pewlett-Hackard company, and also find the ones that are eligible for a mentorship program to help the new generation of employees advance in their careers.

## Results
Here [Employee_Database_challenge.sql](https://github.com/nidhipandya/Pewlett-Hackard-Analysis/blob/main/Queries/Employee_Database_challenge.sql) query is used to get the results.
#### Deliverable 1: The Number of Retiring Employees by Title:
* [retirement_titles](https://github.com/nidhipandya/Pewlett-Hackard-Analysis/blob/main/Data/retirement_titles.csv) - First created a Retirement Titles table that holds all the titles of current employees who were born between January 1, 1952 and December 31, 1955. 
* [unique_titles](https://github.com/nidhipandya/Pewlett-Hackard-Analysis/blob/main/Data/unique_titles.csv) - some employees may have multiple titles in the database, due to promotions— The DISTINCT ON statement has been used to create a table that contains the most recent title of each employee. 
* [retiring_titles](https://github.com/nidhipandya/Pewlett-Hackard-Analysis/blob/main/Data/retiring_titles.csv) - Then, the COUNT() function is used to create a final table that has the number of retirement-age employees by most recent job title.

![Dev-1](https://github.com/nidhipandya/Pewlett-Hackard-Analysis/blob/main/Del-1.PNG)

#### Deliverable 2: Employees who are eligible for the mentorship program:
* [mentorship_eligibility](https://github.com/nidhipandya/Pewlett-Hackard-Analysis/blob/main/Data/mentorship_eligibilty.csv) - created a mentorship-eligibility table that holds the current employees who were born between January 1, 1965 and December 31, 1965.

![Dev-2](https://github.com/nidhipandya/Pewlett-Hackard-Analysis/blob/main/Del-2.PNG)

## Summary

#### How many roles will need to be filled as the "silver tsunami" begins to make an impact?
As per the Deliverable 1 result, there are 72,458 current employees who are at retirement age. If they all retire and need to be replaced, 72,458 roles will need to be filled.

#### Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees?
As per Deliverable 2 result, there are only 1549 potential mentorship-eligibile employees and 72,458 potential roles to fill. According this result each mentorship-eligibile employee will have to mentor just under 50 new employees to fill roles.

* Retiring Titles(**Grand Total - 72,458**)

![Retiring Titles](https://github.com/nidhipandya/Pewlett-Hackard-Analysis/blob/main/Del-1.PNG)

* Mentorship Eligibility by Title(**Grand Total - 1549**)

![Mentorship Eligibility by Title](https://github.com/nidhipandya/Pewlett-Hackard-Analysis/blob/main/Del-2.1.PNG)
