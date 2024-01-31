SELECT * 
FROM public.green_taxi_data
LIMIT 100;


SELECT * 
FROM public.taxizone;



-- Question 3 

SELECT COUNT(*)
FROM public.green_taxi_data
WHERE DATE(lpep_pickup_datetime) = '2019-09-18'; 
AND DATE(lpep_dropoff_datetime) = '2019-09-18';



---- Question 4

SELECT lpep_pickup_datetime, MAX(trip_distance)
FROM public.green_taxi_data
GROUP BY 1
ORDER BY 2 DESC;


--- Question 5
SELECT "Borough", SUM(total_amount) AS sum_total
FROM public.green_taxi_data
LEFT JOIN public.taxizone
ON "PULocationID" = "LocationID"
GROUP BY "Borough"
HAVING SUM(total_amount) > 500000
ORDER BY sum_total DESC;



--- Question 6
	
SELECT "PULocationID", 
		"DOLocationID", 
		zpu."Zone" AS pickup_loc, 
		zdo."Zone" AS dropoff_loc,
		tip_amount
FROM public.green_taxi_data AS g
LEFT JOIN public.taxizone AS zpu
ON g."PULocationID" = zpu."LocationID"
LEFT JOIN public.taxizone AS zdo
ON g."DOLocationID" = zdo."LocationID"
WHERE zpu."Zone" = 'Astoria'
ORDER BY tip_amount DESC
LIMIT 1;
