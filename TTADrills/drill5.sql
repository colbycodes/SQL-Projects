USE db_zooTest2
SELECT * FROM tbl_nutrition
/*Drill 5 Database & SQL Course*/
SELECT species_name AS 'Species Name:', species_nutrition AS 'Nutrition Type: ' FROM tbl_species s
INNER JOIN tbl_nutrition n ON s.species_nutrition = n.nutrition_id
 







