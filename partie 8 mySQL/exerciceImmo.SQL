-- clients
INSERT INTO guest (firstname, lastname, birthDay, mail, budget, id_typesOfGood) VALUES
('toure','mamadou','1978/05/11','touremamadou@gmail.com',150000,'1'),
('baradji','théma','2015/09/30','themabaradji@gmail.com',150000,'1'),
('diawara','fatimata','1981/02/01','diawarafatimata@gmail.com',350000,'1'),
('traore','iringo','1992/01/22','traoreirngo@gmail.com',250000,'1'),
('camara','kandji','1984/10/19','camarakandji@gmail.com',175000,'2'),
('soukouna','kadi','1985/02/17','soukounakadi@gmail.com',220000,'2'),
('seck','moussa','1986/03/11','seckmoussa@gmail.com',155000,'1'),
('sidibé','kouta','1987/02/27','sidibekouta@gmail.com',200000,'1'),
('simaga','ibraima','1988/03/25','simagaibraima@gmail.com',350000,'2'),
('samb','djibril','1989/12/25','sambdjibril@gmail.com',500000,'1'),
('niang','ava','1991/06/28','niangava@gmail.com',140000,'3'),
('konté','oury','1992/07/12','konteoury@gmail.com',330000,'3'),
('fofana','aissétou','1993/06/06','fofanaaissetou@gmail.com',155000,'2'),
('dionfoula','sokona','1994/09/11','dionfoulasokona@gmail.com',180000,'2'),
('kebe','guilin','1995/12/07','kebeguilin@gmail.com',450000,'2'),
('gassama','chirkaka','1996/08/24','gassamachirkaka@gmail.com',260000,'3'),
('diallo','otche','1998/01/07','diallootche@gmail.com',270000,'1'),
('dianesy','nanar','1998/01/21','dianesynanar@gmail.com',190000,'1'),
('coulibaly','zonby','2005/02/01','coulibalyzonby@gmail.com',130000,'2'),
('dansoko','mina','2010/11/16','dansokomina@gmail.com',245000,'1');

-- biens immobilier
INSERT INTO 

-- creneau horaire
INSERT INTO rdv (date,id_house, id_Clients, id_time) VALUES
('2012-02-10','1','1','1'),
('2013-03-12','2','2','2'),
('2014-04-14','3','3','3'),
('2015-05-16','4','4','4'),
('2016-06-18','5','5','5'),
('2017-07-20','6','6','6'),
('2018-08-22','7','7','1'),
('2019-09-24','8','8','2'),
('2020-10-26','9','9','3'),
('2021-11-28','10','10','4');



-- types
INSERT INTO types (types) VALUES
('appartment'),
('house'),
('field');


-- time_slot
INSERT INTO time_slot (time_slot) VALUES
('10:00'),
('11:00'),
('13:00'),
('14:00'),
('15:00'),
('16:00');


-- Il faudra pouvoir afficher tous les biens par ordre de prix (nom du bien, son type, son code postal, son prix)
SELECT name, zip_code, price, types
FROM real_estate natural join types
order by price;

-- Il faudra pouvoir afficher les rendez-vous par ordre chronologique (date et créneau horaire du rendez-vous, nom du bien, son type, son code postal, son prix, nom et prénom du client)
SELECT date, time_slot, name, types, zip_code, price, firstname, lastname
FROM rendez_vous natural join types_of_goods natural join time_slot natural join real_estate natural join guest
order by date;


-- Il faudra pouvoir afficher les clients par type de bien qu'ils recherchent (nom et prénom du client, type de bien, budget)
SELECT 


-- EXERCICE 3 HOPITAL 

-- liste des patients
INSERT INTO patients (lastname_patients, firstname_patients, birthDay_patients, id_doctors) VALUES
('Dua', 'Lipa', '1995-08-22', 1),
('Jordan', 'Michael', '1987-02-09', 2),
('Pope', 'Olivia', '1980-11-07', 3),
('Lothbrok', 'Lagertha', '1977-12-17', 4),
('Keating ', 'Annalise', '1972-02-27', 5);


-- spécialités des medecins
INSERT INTO speciality (.name_speciality) VALUES 
('Généraliste'),
('Neurologue'),
('Oncologue');

-- rendez-vous
INSERT INTO appointment (date_appointment) VALUES
('2021-02-04'),
('2021-03-17'),
('2021-04-22'),
('2021-05-10'),
('2021-06-28');

-- creneaux horaires
INSERT INTO timeSlot (time_slot) VALUES
('10:00'),
('11:00'),
('13:00'),
('14:00'),
('15:00'),
('16:00');

-- premier requets
SELECT * FROM rendez_vous
INNER join patients ON rendez_vous.id_patients = patients. id_patients
INNER join doctors ON patient.id_doctors = doctors.id_doctors
INNER join speciality ON doctors.id_speciality = speciality.id_speciality
INNER join timeSlot ON timeSlot.time_slot = timeSlot.id_timeSlot;