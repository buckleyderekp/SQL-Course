-- A sales employee at carnival creates a new sales record for a sale they are trying to close. The customer, last minute decided not to purchase the vehicle. 
-- Help delete the Sales record with an invoice number of '7628231837'.
DELETE FROM Sales
WHERE invoice_number = '7628231837'


-- An employee was recently fired so we must delete them from our database. Delete the employee with employee_id of 35. What problems might you run into
-- when deleting? How would you recommend fixing it?

-- option 1

-- DELETE FROM Sales
-- Where employee_id = 35;

-- DELETE FROM Employee
-- Where employee_id = 35;

-- option 2

ALTER TABLE Employees
ADD COLUMN isActive bool NOT NULL
DEFAULT TRUE;

UPDATE Employees
SET isActive = FALSE
WHERE employee_id = 35;

-- option 3
ALTER table
DROP CONSTRAINT slaes_employee_fkey
ADD CONSTRAINT sales_employee_id_fkey
FOREIGN KEY (employee_id) REFERENCES employess(employee_id) ON DELETE CASCADE;

DELETE FROM Employees
WHERE employee_id= 35







