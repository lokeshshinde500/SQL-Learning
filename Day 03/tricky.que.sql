-- 20 TRICKY SQL QUESTIONS (HAVING MASTER LEVEL)

-- 1️⃣ Sellers who have at least 5 products with rating 4 or 5
SELECT
	SELLER_NAME
FROM
	PRODUCTS
WHERE
	RATING BETWEEN 4 AND 5
GROUP BY
	SELLER_NAME
HAVING
	COUNT(*) >= 5;

-- 2️⃣ Sellers who have more than 3 products with discount = 0
SELECT
	SELLER_NAME
FROM
	PRODUCTS
WHERE
	DISCOUNT = 0
GROUP BY
	SELLER_NAME
HAVING
	COUNT(*) > 3;

-- 3️⃣ Sellers who have at least 2 products priced above 1000
SELECT
	SELLER_NAME
FROM
	PRODUCTS
WHERE
	PRICE > 1000
GROUP BY
	SELLER_NAME
HAVING
	COUNT(*) >= 2;

-- 4️⃣ Sellers whose average rating of discounted products is ≥ 4
SELECT
	SELLER_NAME
FROM
	PRODUCTS
WHERE
	DISCOUNT > 0
GROUP BY
	SELLER_NAME
HAVING
	AVG(RATING) >= 4;

-- 5️⃣ Sellers who have at least 3 products launched in last 60 days
SELECT
	SELLER_NAME
FROM
	PRODUCTS
WHERE
	LAUNCH_DATE >= CURRENT_DATE - INTERVAL '60 days'
GROUP BY
	SELLER_NAME
HAVING
	COUNT(*) >= 3;

-- 6️⃣ Sellers whose total available stock of rating-5 products is > 50
SELECT
	SELLER_NAME
FROM
	PRODUCTS
WHERE
	RATING = 5
GROUP BY
	SELLER_NAME
HAVING
	SUM(AVAILABLE_STOCK) > 50;

-- 7️⃣ Ratings which have at least 10 products with price < 500
SELECT
	RATING
FROM
	PRODUCTS
WHERE
	PRICE < 500
GROUP BY
	RATING
HAVING
	COUNT(*) >= 10;

-- 8️⃣ Discount values which are used by at least 5 products having rating ≥ 4
SELECT
	DISCOUNT
FROM
	PRODUCTS
WHERE
	RATING >= 4
GROUP BY
	DISCOUNT
HAVING
	COUNT(*) >= 5;

-- 9️⃣ Sellers whose average price of rating-5 products > 800
SELECT
	SELLER_NAME
FROM
	PRODUCTS
WHERE
	RATING = 5
GROUP BY
	SELLER_NAME
HAVING
	AVG(PRICE) > 800;

-- 🔟 Sellers who have at least 2 products where available_stock < 10
SELECT
	SELLER_NAME
FROM
	PRODUCTS
WHERE
	AVAILABLE_STOCK < 10
GROUP BY
	SELLER_NAME
HAVING
	COUNT(*) >= 2;
	
-- 1️⃣1️⃣ Sellers whose total orders of discounted products > 300
SELECT
	SELLER_NAME
FROM
	PRODUCTS
WHERE
	DISCOUNT > 0
GROUP BY
	SELLER_NAME
HAVING
	SUM(TOTAL_ORDERS) > 300;

-- 1️⃣2️⃣ Sellers who have at least 4 products with price between 500 and 1000
SELECT
	SELLER_NAME
FROM
	PRODUCTS
WHERE
	PRICE BETWEEN 500 AND 1000
GROUP BY
	SELLER_NAME
HAVING
	COUNT(*) >= 4;
	
-- 1️⃣3️⃣ Ratings whose average discount is greater than 20
SELECT
	RATING
FROM
	PRODUCTS
GROUP BY
	RATING
HAVING
	AVG(DISCOUNT) > 20;
	
-- 1️⃣4️⃣ Sellers who have at least 3 products with both rating ≥ 4 AND discount ≤ 10
SELECT
	SELLER_NAME,
	COUNT(*)
FROM
	PRODUCTS
WHERE
	RATING >= 4
	AND DISCOUNT <= 10
GROUP BY
	SELLER_NAME
HAVING
	COUNT(*) >= 3;

-- 1️⃣5️⃣ Sellers whose minimum price among rating-5 products is > 700
SELECT
	SELLER_NAME
FROM
	PRODUCTS
WHERE
	RATING = 5
GROUP BY
	SELLER_NAME
HAVING
	MIN(PRICE) > 700;
	
-- 1️⃣6️⃣ Sellers who have more than 5 products launched before 2024
SELECT
	SELLER_NAME
FROM
	PRODUCTS
WHERE
	LAUNCH_DATE < '2024-01-01'
GROUP BY
	SELLER_NAME
HAVING
	COUNT(*) > 5;
	
-- 1️⃣7️⃣ Sellers whose average available stock per product < 15
SELECT
	SELLER_NAME
FROM
	PRODUCTS
GROUP BY
	SELLER_NAME
HAVING
	AVG(AVAILABLE_STOCK) < 15;
	
-- 1️⃣8️⃣ Ratings which have at least 6 products with available stock = 0
SELECT
	RATING
FROM
	PRODUCTS
WHERE
	AVAILABLE_STOCK = 0
GROUP BY
	RATING
HAVING
	COUNT(*) >= 6;

-- 1️⃣9️⃣ Sellers who have at least 3 products where (price - discount%) > 900
SELECT
	SELLER_NAME
FROM
	PRODUCTS
WHERE
	(PRICE - (PRICE * DISCOUNT / 100)) > 900
GROUP BY
	SELLER_NAME
HAVING
	COUNT(*) >= 3;

-- 2️⃣0️⃣ Sellers whose maximum total_orders among rating-5 products > 100
SELECT
	seller_name
FROM
	PRODUCTS
WHERE
	RATING = 5
GROUP BY
	SELLER_NAME
HAVING
	MAX(TOTAL_ORDERS) > 100;

