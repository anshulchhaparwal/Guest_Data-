-- 1.  IF WE WANT TO FIND TOTAL REVENUE OF THE HOTEL ?
SELECT  sum(amount_paid) AS Total_Revenue  FROM Guest_data;

-- 2.  MOST PREFERRED SERVICE USED BY GUESTS.
SELECT count(service_used) AS Most_Preferred_service, service_used FROM Guest_data GROUP BY service_used;

-- 3.  TO FETCH THE INCOMPLETE CONTACT NUMBER.
SELECT First_Name, contact_number FROM Guest_data 
WHERE LENGTH(contact_number) < 10 ;

-- 4. TO HELP HOUSEKEEPING DEPARTMENT TO PRIORITISE THEIR WORK.
SELECT first_name, room_type, CASE WHEN check_in_date = check_out_date THEN 'Same Day Check-in Check-out'
ELSE 'Normal Check-in Check-out' END AS PRIORITY FROM Guest_data;

-- 5. TO CHECK THE ROOM AVAILABILITY OF A PARTICULAR ROOM TYPE.
SELECT room_number, room_type, check_out_date AS Room_Available_From FROM Guest_data
WHERE room_type= 'AC Room' AND room_availability= 'Available'
ORDER BY check_out_date;

-- 6. TO KNOW NUMBER OF GUESTS IN A PARTICULAR MONTH. 
SELECT extract(month from check_in_date) AS Month, count(*) AS Bookings_Per_Month
FROM guest_data GROUP BY extract(month from check_in_date);

-- 7. TO KNOW THE MOST PREFERRED ROOM TYPE.
SELECT room_type, count(room_type) AS Usage_Count 
FROM guest_data GROUP BY room_type ORDER BY count(room_type) DESC;

-- 8. TO KNOW THE COUNT OF THE GUESTS OF DIFFERENT AGE.
SELECT age, count(Customer_Id) AS Age_Count 
 FROM guest_data GROUP BY age ORDER BY age;
 
-- 9. TO KNOW IF THERE IS ANY PAYMENT PENDING.
SELECT Customer_Id, First_Name, Last_Name, check_In_date, check_out_date, Room_Rate, Amount_Paid,  
CASE WHEN (amount_paid - room_rate) < 0 THEN ( amount_paid - room_rate) END AS Payment_Pending 
FROM guest_data;

-- 10. TO KNOW IF GUESTS ARE USING ANY OTHER SERVICES PROVIDED AND ITS AMOUNT.
SELECT Customer_Id, First_Name, Last_Name, check_In_date, check_out_date, Room_Rate, Amount_Paid, 
CASE WHEN (amount_paid - room_rate) > 0 THEN  (amount_paid - room_rate) END AS Extra_Service_Amount from Guest_data ;\

-- 11. TO FETCH ALL THE BILLING INFORMATION. 
SELECT customer_id, first_name, last_name, contact_number, check_in_date, check_out_date, room_type, room_rate, service_used, payment_method, amount_paid
FROM Guest_data;
-- 12. TO PROVIDE OFFERS TO FREQUENT OR LOYAL GUESTS.
SELECT customer_id, first_name, last_name, contact_number, previous_visits,
CASE WHEN previous_visits >=5 THEN 'Free Restaurant Service'
END AS OFFER FROM guest_data ORDER BY OFFER DESC;

-- 13. TO KNOW ERRORS FROM DIFFERENT CRITERIA.
SELECT room_number, guest_status, room_availability, check_out_date AS Room_Available_FROM from guest_data 
WHERE guest_status='Checked-Out' AND room_availability= 'Unavailable';






