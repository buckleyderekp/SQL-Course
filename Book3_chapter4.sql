-- Carnival would like to create a stored procedure that handles the case of updating their vehicle inventory when a sale occurs. 
-- They plan to do this by flagging the vehicle as is_sold which is a field on the Vehicles table. When set to True this flag will 
-- indicate that the vehicle is no longer available in the inventory. Why not delete this vehicle? We don't want to delete it because 
-- it is attached to a sales record.


ALTER TABLE Vehicles
ADD COLUMN is_sold bool NOT NULL
SET DEFAULT FALSE

CREATE PROCEDURE remove_vehicle_from_inventory(vehicleId int)
LANGUAGE plpsql
AS $$
BEGIN

UPDATE Vehicles v
SET is_sold = true
WHERE v.vehicle_id = vehicleId

END
$$;