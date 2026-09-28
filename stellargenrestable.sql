insert into public.ggas_app_stellargenres
	 
  ( star_name,
	star_classification,
	luminosity_classification,
	temperature,
	mass,
	elemental_composition,
	description,
	birth,
	life,
	death,
	reincarnation,
	example,
	slug,
	sort_order)
select star_name,
	star_classification,
	luminosity_classification,
	temperature,
	mass,
	elemental_composition,
	description,
	birth,
	life,
	death,
	reincarnation,
	example,
	slug,
	sort_order
from public.goodgasapp_starsgenres;

select * from public.goodgasapp_starsgenres;
/* INSERT INTO target_table
   SELECT * FROM source_table;	
-quicker approach
*/
