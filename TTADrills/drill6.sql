
/*Drill 6 Database & SQL Course*/

SELECT specialist_fname, specialist_lname, specialist_contact FROM tbl_specialist

INNER JOIN tbl_care c ON care_specialist = tbl_specialist.specialist_id
INNER JOIN tbl_species s ON care_id = species_care
WHERE s.species_name = 'brown bear'









