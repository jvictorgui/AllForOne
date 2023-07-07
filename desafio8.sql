SELECT concat(first_name, ' ',  last_name) AS 'full_name',
	   Concat(city, '-', state_province, ', ', address) AS 'location'
 FROM employees;
