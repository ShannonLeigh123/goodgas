/*Created database GoodnessGaseous for Django-bootstrap v5 project.
  Created two tables with information I gathered from the internet. (cleaned and normalized into 2 tables)
  I joined the two  tables to create the model I will use in the models.py file. (Info I want display on webpage)
  Next,  insert into tables the values I gathered.

 */
  
CREATE DATABASE GoodnessGaseous;

Create Table stars.starlife(starlife_id SERIAL PRIMARY KEY,
                      star_name varchar(54),
                      birth text,
					  life text,
					  death text,
					  reincarnation text);
Select * From stars.starlife; --view table to check structure

Create Table stars.starfacts(starfacts_id  SERIAL PRIMARY KEY,
                       star_name varchar(54),
                       star_classification varchar(50),
                       luminosity_classification varchar(50),
					   temperature int,
                       elemental_composition varchar(255),
					   description text,
					   example text,
					   slug varchar(50),
					   starlife_id int
						);
Select * From stars.starfacts;

Create Table stars.pulsars_variants(pulsar_id Serial Primary Key,
                                    star_name varchar(255));
																	
Select * From stars.pulsars_variants;

INSERT INTO stars.starlife (star_name, birth, life, death, reincarnation)
VALUES 
('O-Type Star', 'Collapse of massive, dense molecular cloud cores', 'Extremely hot, bright, short-lived; rapid hydrogen fusion', 'Explodes as a supernova', 'Forms neutron stars or black holes'),
('B-Type Star', 'Formed from large, dense gas clouds', 'High-mass, blue-white, strong stellar winds', 'Supernova', 'Neutron star or black hole'),
('A-Type Star', 'Collapse of medium-large molecular clouds', 'Bright white stars with strong hydrogen lines', 'Expands into a red giant', 'White dwarf'),
('F-Type Star', 'Collapse of medium-mass gas clouds', 'Yellow-white stars with stable hydrogen fusion', 'Red giant phase', 'White dwarf'),
('G-Type Star', 'Collapse of small–medium clouds', 'Orange, long-lived, stable fusion', 'Red giant', 'White dwarf'),
('K-Type Star', 'Collapse of small–medium clouds', 'Orange, long-lived, stable fusion', 'Red giant', 'White dwarf'),
('M-Type Star', 'Collapse of small clouds', 'Red dwarfs; extremely long lifespans', 'Slowly cool and fade', 'Black dwarf (in trillions of years)'),
('Red Giant', 'Former main-sequence star expanding after hydrogen depletion', 'Large, cool, luminous; helium fusion begins', 'Planetary nebula', 'White dwarf'),
('Red Supergiant', 'Massive star leaving main sequence', 'Huge, cool, unstable outer layers', 'Supernova', 'Neutron star or black hole'),
('Blue Giant', 'High-mass star evolving off main sequence', 'Hot, bright, short-lived', 'Supernova', 'Neutron star or black hole'),
('Blue Supergiant', 'Massive O/B stars evolving', 'Extremely luminous, unstable, strong winds', 'Supernova', 'Neutron star or black hole'),
('White Dwarf', 'Remnant core of a low–medium mass star', 'Slowly cools over billions of years', 'Fades into a black dwarf', 'Black dwarf (eventually)'),
('Neutron Star', 'Core-collapse supernova remnant', 'Ultra-dense, rapidly spinning; may emit pulses', 'Gradual spin-down', 'Possibly merges into black hole'),
('Black Dwarf', 'Fully cooled white dwarf', 'Cold, inert stellar remnant', 'True death', 'Black nothingness'),
('Wolf-Rayet Star', 'Massive star shedding outer layers', 'Strong winds, exposed helium core', 'Supernova', 'Black hole or neutron star'),
('Carbon Star', 'Red giant with carbon-rich atmosphere', 'Cool, deep red, heavy element production', 'Planetary nebula', 'White dwarf'),
('S-Type Star', 'Red giant with zirconium-rich atmosphere', 'Transitional between M-type and carbon stars', 'Planetary nebula', 'White dwarf'),
('L-Type Brown Dwarf', 'Failed star(harsh); insufficient mass for hydrogen fusion', 'Cool, dusty atmosphere', 'Slowly cools indefinitely', 'None(from harsh to even worse)'),
('T-Type Brown Dwarf', 'Low-mass object unable to sustain fusion', 'Methane-rich atmosphere; very cool', 'Cools forever', 'True Death (That''s cold)'),
('Y-Type Brown Dwarf', 'Extremely low-mass substellar object', 'Coldest known brown dwarfs', 'Continual cooling', 'Nope'),
('Pulsar', 'Formed when a massive star goes supernova and its core collapses into a neutron star', 'Rapidly spinning neutron star emitting beams of radiation from magnetic poles; pulses appear when beams sweep past Earth', 'Gradual spin‑down as rotational energy is lost', 'May evolve into a slower neutron star or merge into a black hole'),
('Millisecond Pulsars (MSPs)', 'Formed when an old neutron star is "spun up" by accreting matter from a binary companion.', 'Extremely fast rotation (1–10 ms per spin); highly stable pulses used for precision timing.', 'Gradual spin-down over billions of years.', 'May become a slower, ordinary neutron star or merge in a binary system.'),
('Magnetar', 'Created when a massive star goes supernova and leaves behind a neutron star with an ultra‑strong magnetic field.', 'Emits intense X‑ray and gamma‑ray bursts; magnetic field trillions of times stronger than Earth’s.', 'Magnetic field decays; may transition into a quieter neutron star.', 'Possible evolution into a standard pulsar or quiescent neutron star.'),
('Binary Pulsar', 'Forms when a neutron star exists in a gravitationally bound binary system, often after a supernova.', 'Pulsar interacts with its companion; may accrete matter, change spin rate, or emit gravitational waves.', 'Can merge with companion or collapse into a black hole.', 'May become a millisecond pulsar if spun up by accretion.'),
('RRAT (Rotating Radio Transient)', 'Neutron star formed in a supernova, similar to pulsars.', 'Emits sporadic, unpredictable radio bursts instead of steady pulses; likely an extreme pulsar variant.', 'Gradual weakening of bursts as rotation slows.', 'May evolve into a quiet neutron star or weak pulsar.');

Select * from stars.starlife;

INSERT INTO stars.starfacts (
    star_name, 
    star_classification, 
    luminosity_classification, 
    temperature, 
    elemental_composition, 
    description, 
    example, 
    slug
)
VALUES
('O-Type Star', 'O', 'V, III, I', 40000, 'Hydrogen, Helium, trace ionized metals', 'Extremely hot, massive blue stars above 25,000 K with intense ultraviolet radiation and short lifespans.', 'Zeta Puppis, Theta¹ Orionis C', 'o-type-star'),
('B-Type Star', 'B', 'V, III, I', 15000, 'Hydrogen, Helium, light metals', 'Hot blue-white stars between 10,000-25,000 K with strong helium lines and high luminosity.', 'Rigel, Spica', 'b-type-star'),
('A-Type Star', 'A', 'V', 9000, 'Hydrogen, Helium, iron, calcium', 'White stars with strong hydrogen absorption lines and temperatures around 7,400-10,000 K.', 'Sirius A, Vega', 'a-type-star'),
('F-Type Star', 'F', 'V', 7000, 'Hydrogen, Helium, iron, magnesium', 'Yellow-white stars between 6,000-7,400 K with many metallic spectral lines.', 'Procyon A, Gamma Virginis', 'f-type-star'),
('G-Type Star', 'G', 'V', 5800, 'Hydrogen, Helium, oxygen, carbon, iron', 'Yellow main-sequence stars around 5,300-6,000 K like the Sun, stable and long-lived.', 'Epsilon Eridani, Alpha Centauri B', 'g-type-star'),
('K-Type Star', 'K', 'V', 4500, 'Hydrogen, Helium, metals, molecular bands', 'Cool orange stars between 3,900-5,300 K, long-lived and common in the galaxy.', 'Epsilon Eridani, Alpha Centauri B', 'k-type-star'),
('M-Type Star', 'M', 'V', 3000, 'Hydrogen, Helium, titanium oxide', 'Cool red dwarfs below 3,900 K, the most common stars with extremely long lifespans.', 'Proxima Centauri, Barnard''s Star', 'm-type-star'),
('Red Giant', 'K-M', 'III', 3300, 'Hydrogen, Helium, carbon, nitrogen, oxygen', 'Evolved stars that have exhausted core hydrogen and expanded into large, cool, luminous giants.', 'Aldebaran, Arcturus', 'red-giant'),
('Red Supergiant', 'K-M', 'I', 3500, 'Hydrogen, Helium, carbon, oxygen, silicon', 'Enormous, cool, extremely luminous stars nearing the end of their life cycle before supernova.', 'Betelgeuse, Antares', 'red-supergiant'),
('Blue Giant', 'O-B', 'III', 20000, 'Hydrogen, Helium, ionized metals', 'Massive, hot, bright blue stars with short lifespans found in young clusters.', 'Alcyone, Pi Sagittarii', 'blue-giant'),
('Blue Supergiant', 'O-B', 'I', 30000, 'Hydrogen, Helium, ionized heavy elements', 'Extremely massive, hot, luminous stars with powerful stellar winds.', 'Rigel, Deneb', 'blue-supergiant'),
('White Dwarf', 'D', 'D', 8000, 'Carbon, Oxygen, Helium', 'Compact stellar remnants supported by electron degeneracy, faint and slowly cooling.', 'Sirius B, Procyon B', 'white-dwarf'),
('Neutron Star', 'N/A', 'Low....', 1000000, 'Neutrons, exotic dense matter', 'Ultra-dense remnants of supernovae composed almost entirely of neutrons.', 'Crab Pulsar, Vela Pulsar', 'neutron-star'),
('Black Dwarf', 'D (cooled)', 'Low, almost none', 300, 'Carbon, Oxygen', 'Theoretical end state of a white dwarf after trillions of years of cooling; none exist yet.', 'None exist yet (universe too young)', 'black-dwarf'),
('Wolf-Rayet Star', 'W', 'I', 1000000, 'Helium, carbon, nitrogen, oxygen', 'Massive evolved stars with strong stellar winds and stripped outer layers.', 'WR 104, Gamma Velorum', 'wolf-rayet-star'),
('Carbon Star', 'C', 'III', 3000, 'Carbon-rich atmosphere, helium, nitrogen', 'Cool giant stars with more carbon than oxygen, producing deep red color.', 'La Superba, R Leporis', 'carbon-star'),
('S-Type Star', 'S', 'III', 2900, 'Zirconium oxide, carbon, oxygen', 'Rare giant stars with nearly equal carbon and oxygen, showing zirconium oxide bands.', 'Chi Cygni, R Andromedae', 's-type-star'),
('L-Type Brown Dwarf', 'L', 'LV', 1800, 'Metal hydrides, alkali metals', 'Cool substellar objects not massive enough for sustained hydrogen fusion.', '2MASS J1507−1627', 'l-type-brown-dwarf'),
('T-Type Brown Dwarf', 'T', 'Low (Magenta)', 1000, 'Methane, water vapor', 'Cooler brown dwarfs with strong methane absorption, faint in visible light.', 'Gliese 229B', 't-type-brown-dwarf'),
('Y-Type Brown Dwarf', 'Y', 'Very Dim', 500, 'Ammonia, water vapor', 'The coolest known brown dwarfs with temperatures similar to Earth-like environments.', 'WISE 0855−0714', 'y-type-brown-dwarf'),
('Pulsar', 'Stellar Remnant', 'Power based', 1000000, 'Primarily neutrons, minor presence of protons, electrons, iron in its crust', 'Rapidly rotating neutron stars that emit beams of electromagnetic radiation from their magnetic poles', 'Crab Pulsar, Vela Pulsar', 'pulsar'),
('Millisecond Pulsars (MSPs)', 'Stellar Remnant', 'Power based', 1000000, 'Primarily neutrons, minor presence of protons, electrons, iron in its crust', 'A subclass of pulsars with extremely fast rotational periods, typically between 1 and 10 milliseconds. They are often called "recycled pulsars".', 'PSR B1937+21, PSR J0437−4715', 'millisecond-pulsars-msps'),
('Magnetar', 'Stellar Remnant', 'Power based', 1000000, 'About 95% neutrons and a small percentage of protons and electrons, iron in the crust', 'Neutron stars with extraordinarily powerful magnetic fields, up to 1,000 times stronger than standard pulsars.', 'SGR 1806−20, 1E 1048.1−5937', 'magnetar'),
('Binary Pulsar', 'Stellar Remnant', 'Power based', 1000000, 'About 95% neutrons and a small percentage of protons and electrons, iron in its crust', 'Pulsars that orbit a companion object. They are critical for testing theories of gravity, such as general relativity.', 'PSR B1913+16, PSR J0737−3039A/B', 'binary-pulsar'),
('RRAT (Rotating Radio Transient)', 'Stellar Remnant', 'Power based', 1000000, 'About 95% neutrons and a small percentage of protons, electrons and iron in the crust', 'Sporadic, short radio pulses that are only detectable for a fraction of a second at irregular intervals.', 'RRAT J1819−1458, RRAT J1913+1330', 'rrat-rotating-radio-transient');

Select * From stars.starfacts;

--don't need starlife_id in table
Alter Table stars.starfacts
Drop Column starlife_id;

Insert Into stars.pulsars_variants(star_name)
Values('Pulsar'),
      ('Millisecond Pulsars'),
	  ('Magnetar'),
	  ('Binary Pulsar'),
	  ('RRAT (Rotating Radio Transient)');

Select * From stars.pulsars_variants;

--Useful Query:  find all "Main Sequence" stars using a simple pattern match:

SELECT star_name, birth 
FROM stars.starlife 
WHERE star_name LIKE '%Type Star';

--Supernova Tracking: To see which stars in  table end in a supernova, use:
sql
SELECT star_name, death 
FROM stars.starlife 
WHERE death ILIKE '%supernova%';

--Key Integration Tips for 2026:
--The USING Shorthand: If the joining column has the exact same name (star_name) in both tables,  simplify the join syntax:

SELECT * FROM stars.starlife JOIN stars.starfacts USING (star_name);

--I'm going to create a view of starfacts and starlife, joined to create my model for django-bootstrapv5 project

CREATE VIEW stars.stargenres AS
SELECT l.*, f.*   -- Replace with your actual starfact columns
FROM stars.starlife l
JOIN stars.starfacts f ON l.star_name = f.star_name;

--I'm creating a table to further clarify descrptions of classifications. I'm going to use this on my webpage details 
--display on separate windows on each side of main details container. 

Create Table stars.star_classification_description(star_classification_description_id  SERIAL PRIMARY KEY,
                                                   spectral_classification varchar(255),
												   luminosity_classification varchar(255),
												   variant_classification varchar(255));
Insert Into stars.star_classification_description(spectral_classification,
                                                  luminosity_classification,
												  variant_classification)
Values('O: Blue, Hottest, Most Massive (e.g., Mintaka)', '0 or Ia+: Hypergiants (Extremely Luminous)', 'Brown Dwarfs (L, T, Y): "Failed stars" too small for sustained fusion.'),
      ('B: Blue-White (e.g., Rigel)', 'I (Ia, Ib): Supergiants (Bright, Huge)', 'Wolf-Rayet Stars (W): Very hot, massive O/B stars with strong winds'),
	  ('A: White (e.g., Sirius)', 'II: Bright Giants', ''),
	  ('F: Yellow-White (e.g., Procyon)', 'III: Giants (e.g., Red Giants)', ''),
	  ('G: Yellow (Our Sun)', 'IV: Subgiants (Stars evolving off the main sequence)', '' ),
	  ('K: Orange (e.g., Arcturus)', 'V: Main-Sequence Stars (Like the Sun, fusing Hydrogen)', ''),
	  ('M: Red, Coolest, Most Common (e.g., Proxima Centauri)', 'VI (sd): Subdwarfs', ''),
	  ('L, T, Y: Cooler brown dwarfs and failed stars.', 'D (or VII): White Dwarfs (Dense remnants)', '');

Select * From stars.star_classification_description; --checking structure

SELECT * FROM stars.starlife JOIN stars.starfacts USING (star_name); --not ordered, don't like

--seeing what my view will look like
Select sf.star_name, 
       sf.star_classification, 
	   sf.luminosity_classification, 
	   sf.temperature, 
	   sf.elemental_composition,
	   sf.description,
	   sl.birth,
	   sl.life,
	   sl.death,
	   sl.reincarnation,
	   sf.example,
	   sf.slug
From stars.starfacts As sf
Join stars.starlife As sl
On sf.star_name = sl.star_name;



Select * from stars.stargenres;

Alter Table stars.starfacts
Add Column star_id  int;


--adding star_id field to starfacts table to match model
UPDATE stars.starfacts
SET star_id = CASE
    WHEN star_name = 'A-Type Star' THEN 3
    WHEN star_name = 'B-Type Star' THEN 2
    WHEN star_name = 'Binary Pulsar' THEN 24
    WHEN star_name = 'Black Dwarf' THEN 14
    WHEN star_name = 'Blue Giant' THEN 10
    WHEN star_name = 'Blue Supergiant' THEN 11
    WHEN star_name = 'Carbon Star' THEN 16
    WHEN star_name = 'F-Type Star' THEN 4
    WHEN star_name = 'G-Type Star' THEN 5
    WHEN star_name = 'K-Type Star' THEN 6
    WHEN star_name = 'L-Type Brown Dwarf' THEN 18
    WHEN star_name = 'M-Type Star' THEN 7
    WHEN star_name = 'Magnetar' THEN 23
    WHEN star_name = 'Millisecond Pulsars (MSPs)' THEN 22
    WHEN star_name = 'Neutron Star' THEN 13
    WHEN star_name = 'O-Type Star' THEN 1
    WHEN star_name = 'Pulsar' THEN 21
    WHEN star_name = 'Red Giant' THEN 8
    WHEN star_name = 'Red Supergiant' THEN 9
    WHEN star_name = 'RRAT (Rotating Radio Transient)' THEN 25
    WHEN star_name = 'S-Type Star' THEN 17
    WHEN star_name = 'T-Type Brown Dwarf' THEN 19
    WHEN star_name = 'White Dwarf' THEN 12
    WHEN star_name = 'Wolf-Rayet Star' THEN 15
    WHEN star_name = 'Y-Type Brown Dwarf' THEN 20
END;

--dropping view to recreate with new field.
Drop View stars.stargenres;

--Create view for model(recreated to include star_id field)
CREATE VIEW stars.stargenres AS
Select sf.star_id,
       sf.star_name, 
       sf.star_classification, 
	   sf.luminosity_classification, 
	   sf.temperature, 
	   sf.elemental_composition,
	   sf.description,
	   sl.birth,
	   sl.life,
	   sl.death,
	   sl.reincarnation,
	   sf.example,
	   sf.slug
From stars.starfacts As sf
Join stars.starlife As sl
On sf.star_name = sl.star_name;

Select * from stars.stargenres;

Drop View stars.stargenres; --want updated table with this name, so I dropped the view.

--Create table for model by joining fields from both tables
Select sf.star_id,
       sf.star_name, 
       sf.star_classification, 
	   sf.luminosity_classification, 
	   sf.temperature, 
	   sf.elemental_composition,
	   sf.description,
	   sl.birth,
	   sl.life,
	   sl.death,
	   sl.reincarnation,
	   sf.example,
	   sf.slug
Into stars.starsgenres
From stars.starfacts As sf
Join stars.starlife As sl
On sf.star_name = sl.star_name;

Select * from stars.starsgenres;

Commit; --just testing
Rollback; --same

--testing display of info
Select * from stars.stargenres;
Select * from stars.starlife;
Select * from stars.starfacts;
Select * from stars.star_classification_description;
Select * from stars.pulsars_variants;

--Note: When usisng the shell, type this to set utf-8 or get error
SET client_encoding = 'UTF8';

Drop Table stars.stargenres;

select * from stars.stargenres;

Select * from public.goodgasapp_starsgenres;



INSERT INTO public.goodgasapp_starsgenres (
    star_name, 
    star_classification, 
    luminosity_classification, 
    temperature, 
    elemental_composition, 
    description, 
    example, 
    slug
)
VALUES
('O-Type Star', 'O', 'V, III, I', 40000, 'Hydrogen, Helium, trace ionized metals', 'Extremely hot, massive blue stars above 25,000 K with intense ultraviolet radiation and short lifespans.', 'Zeta Puppis, Theta¹ Orionis C', 'o-type-star'),
('B-Type Star', 'B', 'V, III, I', 15000, 'Hydrogen, Helium, light metals', 'Hot blue-white stars between 10,000-25,000 K with strong helium lines and high luminosity.', 'Rigel, Spica', 'b-type-star'),
('A-Type Star', 'A', 'V', 9000, 'Hydrogen, Helium, iron, calcium', 'White stars with strong hydrogen absorption lines and temperatures around 7,400-10,000 K.', 'Sirius A, Vega', 'a-type-star'),
('F-Type Star', 'F', 'V', 7000, 'Hydrogen, Helium, iron, magnesium', 'Yellow-white stars between 6,000-7,400 K with many metallic spectral lines.', 'Procyon A, Gamma Virginis', 'f-type-star'),
('G-Type Star', 'G', 'V', 5800, 'Hydrogen, Helium, oxygen, carbon, iron', 'Yellow main-sequence stars around 5,300-6,000 K like the Sun, stable and long-lived.', 'Epsilon Eridani, Alpha Centauri B', 'g-type-star'),
('K-Type Star', 'K', 'V', 4500, 'Hydrogen, Helium, metals, molecular bands', 'Cool orange stars between 3,900-5,300 K, long-lived and common in the galaxy.', 'Epsilon Eridani, Alpha Centauri B', 'k-type-star'),
('M-Type Star', 'M', 'V', 3000, 'Hydrogen, Helium, titanium oxide', 'Cool red dwarfs below 3,900 K, the most common stars with extremely long lifespans.', 'Proxima Centauri, Barnard''s Star', 'm-type-star'),
('Red Giant', 'K-M', 'III', 3300, 'Hydrogen, Helium, carbon, nitrogen, oxygen', 'Evolved stars that have exhausted core hydrogen and expanded into large, cool, luminous giants.', 'Aldebaran, Arcturus', 'red-giant'),
('Red Supergiant', 'K-M', 'I', 3500, 'Hydrogen, Helium, carbon, oxygen, silicon', 'Enormous, cool, extremely luminous stars nearing the end of their life cycle before supernova.', 'Betelgeuse, Antares', 'red-supergiant'),
('Blue Giant', 'O-B', 'III', 20000, 'Hydrogen, Helium, ionized metals', 'Massive, hot, bright blue stars with short lifespans found in young clusters.', 'Alcyone, Pi Sagittarii', 'blue-giant'),
('Blue Supergiant', 'O-B', 'I', 30000, 'Hydrogen, Helium, ionized heavy elements', 'Extremely massive, hot, luminous stars with powerful stellar winds.', 'Rigel, Deneb', 'blue-supergiant'),
('White Dwarf', 'D', 'D', 8000, 'Carbon, Oxygen, Helium', 'Compact stellar remnants supported by electron degeneracy, faint and slowly cooling.', 'Sirius B, Procyon B', 'white-dwarf'),
('Neutron Star', 'N/A', 'Low....', 1000000, 'Neutrons, exotic dense matter', 'Ultra-dense remnants of supernovae composed almost entirely of neutrons.', 'Crab Pulsar, Vela Pulsar', 'neutron-star'),
('Black Dwarf', 'D (cooled)', 'Low, almost none', 300, 'Carbon, Oxygen', 'Theoretical end state of a white dwarf after trillions of years of cooling; none exist yet.', 'None exist yet (universe too young)', 'black-dwarf'),
('Wolf-Rayet Star', 'W', 'I', 1000000, 'Helium, carbon, nitrogen, oxygen', 'Massive evolved stars with strong stellar winds and stripped outer layers.', 'WR 104, Gamma Velorum', 'wolf-rayet-star'),
('Carbon Star', 'C', 'III', 3000, 'Carbon-rich atmosphere, helium, nitrogen', 'Cool giant stars with more carbon than oxygen, producing deep red color.', 'La Superba, R Leporis', 'carbon-star'),
('S-Type Star', 'S', 'III', 2900, 'Zirconium oxide, carbon, oxygen', 'Rare giant stars with nearly equal carbon and oxygen, showing zirconium oxide bands.', 'Chi Cygni, R Andromedae', 's-type-star'),
('L-Type Brown Dwarf', 'L', 'LV', 1800, 'Metal hydrides, alkali metals', 'Cool substellar objects not massive enough for sustained hydrogen fusion.', '2MASS J1507−1627', 'l-type-brown-dwarf'),
('T-Type Brown Dwarf', 'T', 'Low (Magenta)', 1000, 'Methane, water vapor', 'Cooler brown dwarfs with strong methane absorption, faint in visible light.', 'Gliese 229B', 't-type-brown-dwarf'),
('Y-Type Brown Dwarf', 'Y', 'Very Dim', 500, 'Ammonia, water vapor', 'The coolest known brown dwarfs with temperatures similar to Earth-like environments.', 'WISE 0855−0714', 'y-type-brown-dwarf'),
('Pulsar', 'Stellar Remnant', 'Power based', 1000000, 'Primarily neutrons, minor presence of protons, electrons, iron in its crust', 'Rapidly rotating neutron stars that emit beams of electromagnetic radiation from their magnetic poles', 'Crab Pulsar, Vela Pulsar', 'pulsar'),
('Millisecond Pulsars (MSPs)', 'Stellar Remnant', 'Power based', 1000000, 'Primarily neutrons, minor presence of protons, electrons, iron in its crust', 'A subclass of pulsars with extremely fast rotational periods, typically between 1 and 10 milliseconds. They are often called "recycled pulsars".', 'PSR B1937+21, PSR J0437−4715', 'millisecond-pulsars-msps'),
('Magnetar', 'Stellar Remnant', 'Power based', 1000000, 'About 95% neutrons and a small percentage of protons and electrons, iron in the crust', 'Neutron stars with extraordinarily powerful magnetic fields, up to 1,000 times stronger than standard pulsars.', 'SGR 1806−20, 1E 1048.1−5937', 'magnetar'),
('Binary Pulsar', 'Stellar Remnant', 'Power based', 1000000, 'About 95% neutrons and a small percentage of protons and electrons, iron in its crust', 'Pulsars that orbit a companion object. They are critical for testing theories of gravity, such as general relativity.', 'PSR B1913+16, PSR J0737−3039A/B', 'binary-pulsar'),
('RRAT (Rotating Radio Transient)', 'Stellar Remnant', 'Power based', 1000000, 'About 95% neutrons and a small percentage of protons, electrons and iron in the crust', 'Sporadic, short radio pulses that are only detectable for a fraction of a second at irregular intervals.', 'RRAT J1819−1458, RRAT J1913+1330', 'rrat-rotating-radio-transient');

select * from stars.starlife;
