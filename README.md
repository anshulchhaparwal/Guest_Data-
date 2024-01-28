Hotel-Customer-SQL-Project

Meta Data

CREATE TABLE  Guest_data (Customer_Id INT, First_Name TEXT, Last_Name TEXT , Age INT, DOB VARCHAR(20), Gender VARCHAR(10), Email VARCHAR(30), Contact_Number VARCHAR(10), Address TEXT, Visit_Purpose TEXT, Guest_Status TEXT, check_In_date DATE, check_out_date DATE, Number_of_Guest INT, Room_Type TEXT, Room_Rate INT , Room_Availability TEXT ,Previous_Visits INT, Room_Number INT , Payment_Method TEXT, Amount_Paid INT , Service_Used TEXT , Ratings FLOAT)

Data:

INSERT INTO Guest_data (Customer_Id, First_Name, Last_Name, Age, DOB, Gender, Email, Contact_Number, Address, Visit_Purpose, Guest_Status, check_In_date, check_out_date, Number_of_Guest, Room_Type, Room_Rate, Room_Availability,Previous_Visits, Room_Number, Payment_Method, Amount_Paid, Service_Used, Ratings)
VALUES
(1, 'Rahul', 'Gupta', 23, '01-01-2000', 'M', 'rahul@gmail.com', '9876543210', '123 Main Street, Mumbai', 'Tourism', 'Checked-In', '2023-01-27', '2023-01-30', 2, 'Deluxe', 2500, 'Unavailable', 2, 101, 'Credit Card', 5000.00, 'Restaurant', 3.5)……………………………
