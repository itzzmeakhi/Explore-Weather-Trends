SELECT *
  FROM city_list
    WHERE country = 'India';


SELECT *
  FROM city_data
    WHERE city = 'Hyderabad' AND country = 'India';


SELECT *
  FROM global_data;



ALTER TABLE city_data RENAME COLUMN avg_temp to local_avg_temp;

ALTER TABLE global_data RENAME COLUMN avg_temp to global_avg_temp;


SELECT global_data.year,city_data.city,global_data.global_avg_temp,city_data.local_avg_temp
  FROM global_data,city_data
    WHERE(global_data.year = city_data.year) AND (city_data.city = 'Hyderabad' AND city_data.country = 'India');