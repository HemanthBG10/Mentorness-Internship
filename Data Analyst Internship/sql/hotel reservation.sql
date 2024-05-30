-- How many reservations have a booking status of "Confirmed"?
select booking_status , count(booking_status)
from hotel
where booking_status = "Not_Canceled";

-- Which meal plan is the most popular among guests? 
select type_of_meal_plan , count(type_of_meal_plan)
from hotel 
group by  type_of_meal_plan;

-- What is the average price per room for reservations involving children?
select avg (avg_price_per_room)
from hotel 
where no_of_children !=0 ;

-- What is the most commonly booked room type?
select room_type_reserved , count(room_type_reserved)
from hotel
group by room_type_reserved;

-- How many reservations fall on a weekend (no_of_weekend_nights > 0)?
select count(booking_id)
from hotel
where no_of_weekend_nights > 0; 

-- What is the highest and lowest lead time for reservations? 
select min(lead_time)
from hotel;
select max(lead_time)
from hotel;

-- What is the most common market segment type for reservations?
select market_segment_type , count(market_segment_type)
from hotel
group by market_segment_type;

-- What is the total number of adults and children across all reservations?
select sum(no_of_children) 
from hotel;
select sum(no_of_adults) 
from hotel;


-- What is the average number of nights (both weekend and weekday) spent by guests for each room type?
select avg(no_of_weekend_nights)
from hotel;
select avg(no_of_week_nights)
from hotel;

-- Find the market segment type that generates the highest average price per room.
select market_segment_type , avg(avg_price_per_room)
from hotel
group by market_segment_type;

-- For reservations involving children, what is the most common room type, and what is the average price for that room type?
select no_of_children , avg (avg_price_per_room),count(room_type_reserved)
from hotel
group by no_of_children;


--  What is the average number of weekend nights for reservations involving children?
select no_of_children , avg (no_of_weekend_nights) 
from hotel 
group by no_of_children ;

-- What is the total number of reservations in the dataset?
select count(Booking_ID)
from hotel;



-- How many reservations were made for the year 20XX (replace XX with the desired year)?
select count(Booking_ID) 
from hotel
where year(arrival_date) = 2018;

-- How many reservations were made in each month of the year?
select COUNT(Booking_Id) as no_of_reservations, MONTH(arrival_date) as Month, YEAR(arrival_date) as Year
 from hotel
 group by Month(arrival_date), YEAR(arrival_date) 
 order by no_of_reservations desc;























