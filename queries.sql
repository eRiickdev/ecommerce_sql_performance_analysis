-- ==========================================================
-- PHASE 1: Executive Summary & High-Value Customer Baseline
-- ==========================================================

SELECT c.customerName, c.customerNumber, 
       SUM(p.amount) AS total_spent
FROM payments p
JOIN customers c
  ON p.customerNumber = c.customerNumber
GROUP BY c.customerName, c.customerNumber
HAVING total_spent > 30000
ORDER BY total_spent DESC;


-- ==========================================================
-- PHASE 2: Customer Tiering & Competitive Ranking
-- ==========================================================

SELECT c.customerName, c.customerNumber, p.amount,
       RANK() OVER (ORDER BY p.amount DESC) AS payment_rank 
FROM payments p
JOIN customers c
  ON p.customerNumber = c.customerNumber;


-- ==========================================================
-- PHASE 3: Operational Efficiency & Time Analysis
-- ==========================================================

-- Calculate fulfillment delivery time in days
SELECT orderNumber, orderDate, shippedDate, 
       DATEDIFF(shippedDate, orderDate) AS fulfillment_days
FROM orders
ORDER BY fulfillment_days;

-- Track payment time gaps using LAG()
SELECT customerNumber, paymentDate, amount,
       LAG(amount) OVER (PARTITION BY customerNumber ORDER BY paymentDate) AS previous_payment
FROM payments;
