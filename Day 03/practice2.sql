-- Product Analytics – SQL Task (Day 3)

-- A. COUNT & BASIC AGGREGATION (1–10)

-- TASK 1️⃣ : Total number of products
SELECT
	COUNT(*) AS TOTAL_PRODUCTS
FROM
	PRODUCTS;
	
-- TASK 2️⃣ : Seller-wise total product count
SELECT
	SELLER_NAME,
	COUNT(*) AS TOTAL_PRODUCTS
FROM
	PRODUCTS
GROUP BY
	SELLER_NAME;

-- TASK 3️⃣ : Rating-wise product count

SELECT
	RATING,
	COUNT(*) as TOTAL_PRODUCTS
FROM
	PRODUCTS
GROUP BY
	RATING;

-- TASK 4️⃣ : Products count where rating is 5

SELECT
	COUNT(*) AS TOTAL_PRODUCTS
FROM
	PRODUCTS
WHERE
	RATING = 5;

-- TASK 5️⃣ : Discount-wise product count

SELECT
	DISCOUNT,
	COUNT(*) AS TOTAL_PRODUCTS
FROM
	PRODUCTS
GROUP BY
	DISCOUNT;

-- TASK 6️⃣ : Total number of distinct sellers

SELECT
	COUNT(DISTINCT SELLER_NAME) AS TOTAL_SELLERS
FROM
	PRODUCTS;

-- TASK 7️⃣ : Products launched in the last 30 days

SELECT
	COUNT(*) AS TOTAL_LAUNCHED_PRODUCTS
FROM
	PRODUCTS
WHERE
	LAUNCH_DATE >= CURRENT_DATE - INTERVAL '30 days';

-- TASK 8️⃣ : Products with zero discount count
SELECT
	COUNT(*) AS TOTAL_PRODUCTS
FROM
	PRODUCTS
WHERE
	DISCOUNT = 0;

-- TASK 9️⃣ : Products where available stock is less than 20
SELECT
	COUNT(*) AS TOTAL_PRODUCTS
FROM
	PRODUCTS
WHERE
	AVAILABLE_STOCK < 20;

-- TASK 🔟 : Products with rating less than 3 count
SELECT
	COUNT(*) AS TOTAL_PRODUCTS
FROM
	PRODUCTS
WHERE
	RATING < 3;

--🔹 B. GROUP BY ANALYTICS (11–20)
-- TASK 1️⃣1️⃣ : Seller-wise average price
SELECT
	SELLER_NAME,
	AVG(PRICE) AS AVERAGE_PRICE
FROM
	PRODUCTS
GROUP BY
	SELLER_NAME;

-- TASK 1️⃣2️⃣ : Rating-wise average price
SELECT
	RATING,
	AVG(PRICE) AS AVERAGE_PRICE
FROM
	PRODUCTS
GROUP BY
	RATING;

-- TASK 1️⃣3️⃣ : Seller-wise total orders
SELECT
	SELLER_NAME,
	SUM(TOTAL_ORDERS) AS TOTAL_ORDERS
FROM
	PRODUCTS
GROUP BY
	SELLER_NAME;

-- TASK 1️⃣4️⃣ : Rating-wise total orders
SELECT
	RATING,
	SUM(TOTAL_ORDERS) AS TOTAL_ORDERS
FROM
	PRODUCTS
GROUP BY
	RATING;

-- TASK 1️⃣5️⃣ : Discount-wise average rating
SELECT
	DISCOUNT,
	AVG(RATING) AS AVERAGE_RATING
FROM
	PRODUCTS
GROUP BY
	DISCOUNT;

-- TASK 1️⃣6️⃣ : Seller-wise maximum product price
SELECT
	SELLER_NAME,
	MAX(PRICE) AS MAX_PRICE
FROM
	PRODUCTS
GROUP BY
	SELLER_NAME;

-- TASK 1️⃣7️⃣ : Seller-wise minimum product price
SELECT
	SELLER_NAME,
	MIN(PRICE) AS MIN_PRICE
FROM
	PRODUCTS
GROUP BY
	SELLER_NAME;

-- TASK 1️⃣8️⃣ : Seller-wise average discount
SELECT
	SELLER_NAME,
	AVG(DISCOUNT) AS AVERAGE_DISCOUNT
FROM
	PRODUCTS
GROUP BY
	SELLER_NAME;

-- TASK 1️⃣9️⃣ : Rating-wise total available stock
SELECT
	RATING,
	SUM(AVAILABLE_STOCK) AS AVAILABLE_STOCK
FROM
	PRODUCTS
GROUP BY
	RATING;

-- TASK 2️⃣0️⃣ : Seller-wise total available stock
SELECT
	SELLER_NAME,
	SUM(AVAILABLE_STOCK) AS AVAILABLE_STOCK
FROM
	PRODUCTS
GROUP BY
	SELLER_NAME;

--🔹 C. HAVING (IMPORTANT – HR FOCUS) (21–30)
-- TASK 2️⃣1️⃣ : Sellers who have more than 5 products
SELECT
	SELLER_NAME
FROM
	PRODUCTS
GROUP BY
	SELLER_NAME
HAVING
	COUNT(*) > 5;

-- TASK 2️⃣2️⃣ : Sellers whose average product price > 500
SELECT
	SELLER_NAME
FROM
	PRODUCTS
GROUP BY
	SELLER_NAME
HAVING
	AVG(PRICE) > 500;

-- TASK 2️⃣3️⃣ : Ratings which have more than 10 products

SELECT
	RATING
FROM
	PRODUCTS
GROUP BY
	RATING
HAVING
	COUNT(*) > 10;


-- TASK 2️⃣4️⃣ : Sellers whose total orders > 200
SELECT
	SELLER_NAME
FROM
	PRODUCTS
GROUP BY
	SELLER_NAME
HAVING
	SUM(TOTAL_ORDERS) > 200;

-- TASK 2️⃣5️⃣ : Sellers whose average rating >= 4
SELECT
	SELLER_NAME
FROM
	PRODUCTS
GROUP BY
	SELLER_NAME
HAVING
	AVG(RATING) >= 4;

-- TASK 2️⃣6️⃣ : Discount values which are used by more than 5 products
SELECT
	DISCOUNT
FROM
	PRODUCTS
GROUP BY
	DISCOUNT
HAVING
	COUNT(*) > 5;

-- TASK 2️⃣7️⃣ : Sellers whose total available stock < 100
SELECT
	SELLER_NAME
FROM
	PRODUCTS
GROUP BY
	SELLER_NAME
HAVING
	SUM(AVAILABLE_STOCK) < 100;
	
-- TASK 2️⃣8️⃣ : Ratings whose average price < 300
SELECT
	RATING,
	AVG(PRICE)
FROM
	PRODUCTS
GROUP BY
	RATING
HAVING
	AVG(PRICE) < 300;

-- TASK 2️⃣9️⃣ : Sellers who have at least 3 products with rating 5
SELECT
	SELLER_NAME
FROM
	PRODUCTS
WHERE
	RATING = 5
GROUP BY
	SELLER_NAME
HAVING
	COUNT(*) >= 3;

-- TASK 3️⃣0️⃣ : Sellers whose maximum product price > 1000
SELECT
	SELLER_NAME
FROM
	PRODUCTS
GROUP BY
	SELLER_NAME
HAVING
	MAX(PRICE) > 1000;