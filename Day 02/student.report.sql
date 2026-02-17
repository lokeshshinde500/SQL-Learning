-- Student Data – SQL Queries DAY 2

-- 1️⃣ Active students
-- List all students whose status is active.
SELECT
	*
FROM
	STUDENTS
WHERE
	STATUS = 'active';
	

-- 2️⃣ Recent enrollments
-- Show students who enrolled in the last 2 years.
SELECT
	*
FROM
	STUDENTS
WHERE
	ENROLLMENT_DATE >= CURRENT_DATE - INTERVAL '2 years';
	

-- 3️⃣ Age filter
-- List students whose age is between 10 and 15.
SELECT
	*
FROM
	STUDENTS
WHERE
	AGE BETWEEN 10 AND 15;

-- 4️⃣ Course-wise filter
-- Show students who are enrolled in Science or Maths course.
SELECT
	*
FROM
	STUDENTS
WHERE
	COURSE IN ('Science', 'Maths');

-- 5️⃣ Attendance check
-- List students whose attendance percentage is less than 75.
SELECT
	*
FROM
	STUDENTS
WHERE
	ATTENDANCE_PERCENTAGE < 75;

-- 6️⃣ Email validation
-- Show students who are using @yopmail.com email domain.
SELECT
	*
FROM
	STUDENTS
WHERE
	EMAIL LIKE '%@yopmail.com';

-- 7️⃣ Fee-based sorting
-- Display all students sorted by fees from highest to lowest.
SELECT
	*
FROM
	STUDENTS
ORDER BY
	FEES DESC;

-- 8️⃣ Top performers
-- Show top 5 students with the highest attendance percentage.
SELECT
	*
FROM
	STUDENTS
ORDER BY
	ATTENDANCE_PERCENTAGE DESC
LIMIT
	5;

-- 9️⃣ Missing data check
-- List students whose email is NULL.
SELECT
	*
FROM
	STUDENTS
WHERE
	EMAIL IS NULL;


-- 🔟 Division-wise filter
-- Show students who belong to Division A or B and are active.
SELECT
	*
FROM
	STUDENTS
WHERE
	DIVISION IN ('A', 'B')
	AND STATUS = 'active';