--Batuhan Ozturk

--1.1

delete from Boek
where auteur_id =
		(select auteur_id
		from Auteur
		where Naam = 'Isabelle')

--1.2
select cat_id 
from Categorie
where categorie = 'Reizen'

select uitg_id
from Uitgever
where uitgever = 'groep graduaat'

select auteur_id 
from Auteur
where Naam = 'Isabelle'


insert into Boek(titel, jaar, cat_id, uitg_id, auteur_id)
values ('Vakantie in de Bergen', 2020, 3, 1, 1),
		('Op weg naar het zuiden', 2022, 3, 1, 1),
		('Bezoek aan een vriend', 2023, 3, 1, 1)

--1.3

update Bier
set Alcohol = round(Alcohol, 0)
where SoortNr < 20 or SoortNr > 50

--1.4

delete from Bier
where Alcohol < 6


