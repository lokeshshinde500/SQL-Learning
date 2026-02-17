-- employee_daily_report.sql DAY 1

--🔹 Task 1: Active employees report
-- Sirf active employees dikhao, latest join hone wale upar.

SELECT
	*
FROM
	EMPLOYEES
WHERE
	STATUS = 'active'
ORDER BY
	JOINING_DATE DESC;

--🔹 Task 2: Salary analysis
-- Wo employees dikhao jinki salary 50,000 se zyada hai.

SELECT
	*
FROM
	EMPLOYEES
WHERE
	SALARY > 50000;

--🔹 Task 3: Freshers list
-- Experience 0 wale employees chahiye.

SELECT
	*
FROM
	EMPLOYEES
WHERE
	EXPERIENCE = 0;

--🔹 Task 4: Manager directory
-- Sirf Manager role wale employees ka naam aur email.

SELECT
	NAME,
	EMAIL
FROM
	EMPLOYEES
WHERE
	ROLE IN ('Manager');

--🔹 Task 5: Highest salary
-- Company ka highest paid employee kaun hai?

SELECT
	*
FROM
	EMPLOYEES
ORDER BY
	SALARY DESC
LIMIT
	1;

--🔹 Task 6: Recent joiners
-- Last 2 saal me join kiye hue employees. 
SELECT
	*
FROM
	EMPLOYEES
WHERE
	JOINING_DATE >= CURRENT_DATE - INTERVAL '2 years' 

--🔹 Task 7: Email domain check
-- Kaun kaun @yopmail.com use kar raha hai?

SELECT
	*
FROM
	EMPLOYEES
WHERE
	EMAIL LIKE '%yopmail.com';

--🔹 Task 8: Sorting request
-- Salary ke hisaab se employees ko high to low dikhao.

SELECT
	*
FROM
	EMPLOYEES
ORDER BY
	SALARY DESC;