-- write your queries here

-- 1
SELECT * FROM owners o FULL JOIN vehicles v ON o.id = v.owner_id;

--2
SELECT o.first_name, o.last_name, COUNT(v.id) 
FROM owners o 
INNER JOIN vehicles v
ON 	o.id = v.owner_id
GROUP by o.first_name, o.last_name
ORDER BY o.first_name ASC;

--3

SELECT o.first_name, o.last_name, AVG(price), COUNT(v.owner_id) AS Vehicle_count FROM owners o                                                                                  JOIN vehicles v ON o.id = v.owner_id GROUP BY o.first_name, o.last_name
HAVING COUNT(v.owner_id)>1 AND AVG(price) > 10000
ORDER BY o.first_name DESC;
