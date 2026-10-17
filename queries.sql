-- ==========================================================
-- PHASE 1: Executive Summary & High-Value Customer Baseline
-- ==========================================================

select c.customerName, c.customerNumber, sum(p.amount) as total_spent
  from payments p
  join customers c
  on p.customerNumber= c.customerNumber
  group by c.customerName, customerNumber
  order by total_spent desc;
