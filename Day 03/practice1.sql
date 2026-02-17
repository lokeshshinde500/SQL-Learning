-- Day 3 : practice questions

-- 🔹 A. COUNT & GROUP BY (Foundation)

-- 1️⃣ Har course me kitne students hain?

SELECT
	COURSE,
	COUNT(*) AS TOTAL_STUDENTS
FROM
	STUDENTS
GROUP BY
	COURSE;

-- 2️⃣ Har standard ke students ka count dikhao
SELECT
	STANDARD::INT,
	COUNT(*) AS TOTAL_STUDENTS
FROM
	STUDENTS
GROUP BY
	STANDARD::INT;
	
-- 3️⃣ Division-wise total students dikhao
SELECT
	DIVISION,
	COUNT(*) AS TOTAL_STUDENTS
FROM
	STUDENTS
GROUP BY
	DIVISION;

-- 4️⃣ Gender-wise student count dikhao
SELECT
	GENDER,
	COUNT(*) AS TOTAL_STUDENTS
FROM
	STUDENTS
GROUP BY
	GENDER;

-- 5️⃣ Sirf active students ka course-wise count dikhao
SELECT
	COURSE,
	COUNT(*) AS TOTAL_STUDENTS
FROM
	STUDENTS
WHERE
	STATUS = 'active'
GROUP BY
	COURSE;

-- 🔹 B. AVG / MIN / MAX (Analytics)

-- 6️⃣ Har course ki average fees dikhao
SELECT
	COURSE,
	AVG(FEES) AS AVERAGE_FEE
FROM
	STUDENTS
GROUP BY
	COURSE;


-- 7️⃣ Har standard ki average attendance percentage
SELECT
	STANDARD::INT,
	AVG(ATTENDANCE_PERCENTAGE) AS AVERAGE_ATTENDANCE
FROM
	STUDENTS
GROUP BY
	STANDARD::INT;


-- 8️⃣ Highest fees kya hai (sirf value)
SELECT
	MAX(FEES) as highest_fee
FROM
	STUDENTS;


-- 9️⃣ Lowest attendance percentage kya hai
SELECT
	MIN(ATTENDANCE_PERCENTAGE) as lowest_attendance
FROM
	STUDENTS;
	
-- 🔟 Har division ka max attendance dikhao
SELECT
	DIVISION,
	MAX(ATTENDANCE_PERCENTAGE) AS MAX_ATTENDANCE
FROM
	STUDENTS
GROUP BY
	DIVISION;

  -- 🔹 C. WHERE + GROUP BY (Real-world)

-- 1️⃣1️⃣ Sirf Science course ke students ka standard-wise count
SELECT
	STANDARD::INT,
	COUNT(*) AS TOTAL_STUDENTS
FROM
	STUDENTS
WHERE
	COURSE = 'Science'
GROUP BY
	STANDARD::INT;

-- 1️⃣2️⃣ Sirf male students ka course-wise count
SELECT
	COURSE,
	COUNT(*) AS TOTAL_STUDENTS
FROM
	STUDENTS
where gender = 'male'
GROUP BY
	COURSE;


-- 1️⃣3️⃣ Standard 1–5 ke students ka course-wise count
SELECT
	STANDARD::INT,
	COURSE,
	COUNT(*) AS TOTAL_STUNDENTS
FROM
	STUDENTS
where standard::int between 1 and 5
GROUP BY
	STANDARD::INT,
	COURSE;


-- 1️⃣4️⃣ Sirf active students ka division-wise average attendance
SELECT
	DIVISION,
	AVG(attendance_percentage) AS AVERAGE_ATTENDANCE
FROM
	STUDENTS
WHERE
	STATUS = 'active'
GROUP BY
	DIVISION;

-- 1️⃣5️⃣ Fees 15000 se zyada wale students ka course-wise count
SELECT
	COURSE,
	COUNT(*)
FROM
	STUDENTS
WHERE
	FEES > 15000
GROUP BY
	COURSE;

-- D. HAVING (IMPORTANT 🔥)

-- 1️⃣6️⃣ Sirf wo courses dikhao jisme 5 se zyada students hain
SELECT
	COURSE
FROM
	STUDENTS
GROUP BY
	COURSE
HAVING
	COUNT(*) > 5;
	
-- 1️⃣7️⃣ Sirf wo standards dikhao jinka average attendance 75 se kam hai

SELECT
	STANDARD::INT
FROM
	STUDENTS
GROUP BY
	STANDARD::INT
HAVING
	AVG(ATTENDANCE_PERCENTAGE) < 75;

-- 1️⃣8️⃣ Sirf wo divisions dikhao jahan total students 10 se zyada hain

SELECT
	DIVISION
FROM
	STUDENTS
GROUP BY
	DIVISION
HAVING
	COUNT(*) > 10;

-- 1️⃣9️⃣ Sirf wo courses dikhao jinki average fees 18000 se zyada hai

SELECT
	COURSE
FROM
	STUDENTS
GROUP BY
	COURSE
HAVING
	AVG(FEES) > 18000;

-- 2️⃣0️⃣ Sirf wo standards dikhao jahan Science students 3 se zyada hain
SELECT
	STANDARD::INT
FROM
	STUDENTS
WHERE
	COURSE = 'Science'
GROUP BY
	STANDARD::INT
having count(*) > 3;



	