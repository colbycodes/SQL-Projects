
/*Drill 4 Database & SQL Course*/
SELECT species_name FROM tbl_species s 
INNER JOIN tbl_nutrition n ON s.species_nutrition = n.nutrition_id
WHERE species_nutrition BETWEEN 2202 AND 2206