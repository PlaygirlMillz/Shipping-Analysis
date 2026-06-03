SELECT*
FROM train;

ALTER TABLE train
RENAME COLUMN ï»¿ID TO Product_id;

SELECT Warehouse_block, AVG(Cost_of_the_Product) AS Avgerage_Cost
FROM train
WHERE Mode_of_Shipment = 'Flight'
GROUP BY Warehouse_block
ORDER BY Avgerage_Cost DESC;

SELECT Product_id, Cost_of_the_Product
FROM train
WHERE Cost_of_the_Product > (SELECT AVG(Cost_of_the_Product) FROM train);

SELECT SUM(Customer_care_calls)
FROM train;

CREATE VIEW Flight_Shipment_Stats AS
SELECT Warehouse_block, COUNT(Product_id) AS Total_Products
FROM train
WHERE Mode_of_Shipment = 'Flight'
GROUP BY Warehouse_block;

SELECT * FROM Flight_Shipment_Stats;