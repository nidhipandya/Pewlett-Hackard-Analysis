select emp_no, first_name, last_name from employees

select title, from_date, to_date from titles

SELECT e.emp_no,
    e.first_name,
	e.last_name,
    tl.title,
    tl.from_date,
    tl.to_date INTO retirement_titles
FROM employees as e
INNER JOIN titles as tl
ON (e.emp_no = tl.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
order by e.emp_no asc;

select * from retirement_titles;

-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON 
	(emp_no) emp_no,
    first_name,
	last_name,
    title
INTO unique_titles
FROM retirement_titles
ORDER BY emp_no asc, to_date DESC;

select * from unique_titles

-- Use count to get no.of employees for a title
SELECT COUNT(emp_no) as count_emp, title
INTO retiring_titles
FROM unique_titles
Group BY title
order by count_emp desc;

select * from retiring_titles

--create a mentorship-eligibility table
SELECT DISTINCT ON (e.emp_no) e.emp_no, e.first_name, e.last_name, e.birth_date,
de.from_date, de.to_date, tl.title
INTO mentorship_eligibilty
FROM employees as e 
INNER JOIN dept_emp as de
ON e.emp_no = de.emp_no
INNER JOIN titles as tl
ON e.emp_no = tl.emp_no
WHERE (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
	  AND (tl.to_date = '9999-01-01')
ORDER BY e.emp_no asc;