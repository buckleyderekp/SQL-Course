Select e.employee_id, e.first_name, e.last_name, de.dealership_id, de.dealership_employee_id
FROM Employees e
JOIN Dealershipemployees de ON e.employee_id = de.employee_id
Where e.first_name ='Rheta'; 

UPDATE Dealershipemployees
SET dealership_id = 20
WHERE Dealershipemployees.dealership_employee_id = 10;

Update Sales
SET payment_method = 'Mastercard'
WHERE invoice_number = '2781047589'

SELECT c.first_name, s.payment_method
FROM Sales s 
JOIN Customers c ON c.customer_id = s.customer_id
WHERE invoice_number = '2781047589'