
--1.	Find the best-selling car model.

SELECT m.model_name,
       COUNT(*) AS units_sold
FROM sales s
JOIN vehicles v ON s.vehicle_id = v.id
JOIN models m   ON v.model_id = m.id
GROUP BY m.model_name
ORDER BY units_sold DESC
FETCH FIRST 1 ROWS ONLY;

--2.	Count total vehicles sold in 2024.
SELECT COUNT(*)  AS total_vehicles_sold_2024
FROM SALES
WHERE EXTRACT(YEAR FROM SALE_DATE) = 2024;

--3.Analyze the total number of vehicles sold and total revenue generated in 2024, grouped by payment type.
SELECT
    COUNT(*) AS total_vehicles_sold_2024,
    SUM(sale_price) AS total_revenue_2024,
    s.PAYMENT_TYPE
FROM sales s
WHERE EXTRACT(YEAR FROM sale_date) = 2024
GROUP BY s.PAYMENT_TYPE;

--4.	Show average sales price by model.

SELECT m.model_name ,
       AVG(SALE_PRICE) AS average_price
FROM SALES s
JOIN vehicles v ON s.vehicle_id = v.id
JOIN models m ON v.model_id = m.id
GROUP BY m.model_name
ORDER BY  average_price DESC;

--5.	Display total sales amount per sales representative.

SELECT sr.FIRST_NAME  || ' ' || sr.LAST_NAME AS SALES_REP,
       COUNT(s.id) AS total_sales_count,
       SUM(s.SALE_PRICE) AS total_sales_amount
FROM SALES s
JOIN  SALES_REPS SR on s.SALES_REP_ID = SR.ID
GROUP BY SR.FIRST_NAME, sr.LAST_NAME
ORDER BY  total_sales_amount DESC;



--6.Find the average price for all body cars.
SELECT m.BODY_TYPE,
       AVG(s.SALE_PRICE) AS average_price
FROM SALES    s
JOIN VEHICLES v ON  s.VEHICLE_ID = v.ID
JOIN MODELS m  ON v.MODEL_ID = m.ID
GROUP BY  m.BODY_TYPE
ORDER BY  average_price DESC;

--7.Find the average price for “SUV” cars.
SELECT AVG(s.SALE_PRICE)  AS SUV_AVG_PRICE
FROM SALES s
JOIN VEHICLES V on s.VEHICLE_ID = V.ID
JOIN MODELS m ON  v.MODEL_ID = m.ID
WHERE LOWER(m.BODY_TYPE) LIKE '%suv%';

--8.	List representatives with sales above 300,000 PLN.
SELECT sr.first_name || ' ' || sr.last_name AS sales_rep,
       COUNT(s.id) AS total_sales_count,
       SUM(s.sale_price) AS total_sales_amount
FROM sales s
JOIN sales_reps sr ON s.sales_rep_id = sr.id
GROUP BY sr.first_name, sr.last_name
HAVING SUM(s.sale_price) >= 300000
ORDER BY total_sales_amount DESC;

--9.Find the city with the most sales.

SELECT c.id, c.name AS city_name,
       SUM(s.sale_price) AS total_revenue
FROM sales s
JOIN dealerships d ON s.dealership_id = d.id
JOIN cities c ON d.city_id = c.id
GROUP BY c.id, c.name
ORDER BY total_revenue DESC
FETCH FIRST 1 ROWS ONLY;


--10.Show sales reps who had no sales in 2023.
SELECT sr.id,
       sr.first_name || ' ' || sr.last_name AS no_sales_rep_2023
FROM sales_reps sr
LEFT JOIN sales s
  ON s.sales_rep_id = sr.id
  AND EXTRACT(YEAR FROM s.sale_date) = 2023
WHERE s.id IS NULL;

--11.Calculate the percentage of “Hybrid-Petrol-Diesel” engine cars.
SELECT e.ENGINE_TYPE,
       ROUND ((COUNT(*) * 100.0) /
    (SELECT COUNT(*)
    FROM VEHICLES), 2) AS PERCENTAGE
FROM VEHICLES v
JOIN MODELS e ON v.MODEL_ID = e.ID
GROUP BY e.ENGINE_TYPE
ORDER BY PERCENTAGE DESC;

--12.Calculate the percentage of “Hybrid” engine cars.
SELECT
       ROUND(
       (COUNT(CASE
        WHEN e.ENGINE_TYPE = 'Hybrid' THEN 1 END ) *100.0) / COUNT(*) , 2
       ) AS HYBRID_PERCENTAGE
FROM VEHICLES v
JOIN MODELS e ON v.MODEL_ID= e.ID;

--13.Find the top 3 car models by total revenue.
SELECT m.MODEL_NAME,
       SUM(s.SALE_PRICE)  AS total_revenue
FROM SALES s
JOIN VEHICLES v ON s.VEHICLE_ID = v.ID
JOIN MODELS M on v.MODEL_ID = M.ID
GROUP BY m.MODEL_NAME
ORDER BY total_revenue DESC
FETCH FIRST 3 ROWS ONLY;