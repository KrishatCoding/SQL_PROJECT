-- 1. Get all successful bookings
SELECT * 
FROM Bookings 
WHERE Booking_Status = "Success";

-- 2. Average ride distance per vehicle type
SELECT Vehicle_type, AVG(Ride_Distance) AS Avg_Distance
FROM Bookings
GROUP BY Vehicle_type;

-- 3. Show all bookings
SELECT * 
FROM Bookings;

-- 4. Total cancellations by customers
SELECT COUNT(Booking_Status) AS Total_Cancellation_by_CX
FROM Bookings
WHERE Booking_Status = "Canceled by Customer";

-- 5. Top 5 customers by total bookings
SELECT Customer_ID, COUNT(Booking_ID) AS Total_Bookings_by_CX
FROM Bookings
GROUP BY Customer_ID
ORDER BY Total_Bookings_by_CX DESC
LIMIT 5;

-- 6. Count of driver cancellations due to personal & car related issue
SELECT COUNT(Canceled_Rides_by_Driver) 
FROM Bookings
WHERE Canceled_Rides_by_Driver = "Personal & Car related issue";

-- 7. Max and Min driver ratings for Prime Sedan
SELECT Vehicle_type, 
       MAX(Driver_Ratings) AS Maximum_Rating_by_Driver, 
       MIN(Driver_Ratings) AS Minimum_Rating_by_Driver
FROM Bookings
WHERE Vehicle_type = "Prime Sedan";

-- 8. Bookings made using UPI
SELECT * 
FROM Bookings
WHERE Payment_method = "UPI";

-- 9. Average customer rating per vehicle type
SELECT Vehicle_type, 
       ROUND(AVG(Customer_Rating), 2) AS Avg_Rating_Per_Vehicle
FROM Bookings
GROUP BY Vehicle_type;

-- 10. Total successful booking value
SELECT SUM(Booking_value) AS Total_Successful_Booking_Value
FROM Bookings
WHERE Booking_Status = "Success";

-- 11. Incomplete rides with reasons
SELECT Date, Customer_ID, Booking_id, Booking_status, Incomplete_rides, Incomplete_rides_reason
FROM Bookings
WHERE Incomplete_rides = "YES";
