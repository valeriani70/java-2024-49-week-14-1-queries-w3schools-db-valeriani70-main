SELECT * FROM orders;
SELECT * FROM orders ORDER BY order_date;
SELECT * FROM orders ORDER BY order_date LIMIT 10;
SELECT c.customer_name, 
       CONCAT(e.first_name, ' ', e.last_name) AS employee_full_name, 
       s.shipper_name, 
       o.order_date
FROM orders o
INNER JOIN customers c ON o.customer_id = c.customer_id
INNER JOIN employees e ON o.employee_id = e.employee_id
INNER JOIN shippers s ON o.ship_via = s.shipper_id;
SELECT c.customer_name, 
       CONCAT(e.first_name, ' ', e.last_name) AS employee_full_name, 
       s.shipper_name, 
       o.order_date, 
       p.product_name
FROM orders o
INNER JOIN customers c ON o.customer_id = c.customer_id
INNER JOIN employees e ON o.employee_id = e.employee_id
INNER JOIN shippers s ON o.ship_via = s.shipper_id
INNER JOIN order_details od ON o.order_id = od.order_id
INNER JOIN products p ON od.product_id = p.product_id;
SELECT country, COUNT(*) AS customer_count
FROM customers
GROUP BY country;
SELECT * FROM employees
WHERE birth_date BETWEEN '1955-01-01' AND '1963-12-31';
SELECT category_name, COUNT(*) AS product_count
FROM products
WHERE unit_price BETWEEN 10 AND 40
GROUP BY category_name;