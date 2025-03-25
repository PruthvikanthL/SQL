CREATE TABLE vehicle_details(id int,vehicle_loc varchar(20),vehicle_reg varchar(10),contact varchar(10),insureance_year int);
DESC vehicle_details;
CREATE TABLE vehicle_parameters(id int, model varchar(10),year_details datetime,engine_type varchar(10),fuel_efficiency varchar(5));
DESC vehicle_parameters;
CREATE TABLE vehicle_type(id int,transmission_type varchar(10),license varchar(10),price int,vehicle_loc varchar(10));
DESC vehicle_type;
CREATE DATABASE Day_2_assesement;
CREATE TABLE space_exploration_missions(
id int,
mission_name varchar(100),
lunch_date date, 
target_planet varchar(50),
mission_status varchar(50));
CREATE TABLE ancient_civilization_artifacts(
id int,
artifact_name varchar(100),
discovery_location varchar(100), 
estimated_age_years int,
material_type varchar(50));
CREATE TABLE mythological_creatures(
id int,
name varchar(100),
origin_culture varchar(20),
abilities text,
first_mentioned_year year);

CREATE TABLE futuristic_technology_patents(
id int,
invention_name varchar(100),
inventor varchar(100),
patent_approval_date date,
tech_category varchar(50));

CREATE TABLE unsolved_historical_mysteries(
id int,
mystery_name varchar(20),
location varchar(20),
year_occured year,
current_theories text);

ALTER TABLE space_exploration_missions ADD Space_Agency varchar(10);
ALTER TABLE space_exploration_missions ADD Crew_Size int;
select * from space_exploration_missions;
ALTER TABLE space_exploration_missions DROP Space_Agency;
ALTER TABLE space_exploration_missions RENAME COLUMN mission_name to missions;
ALTER TABLE space_exploration_missions RENAME COLUMN lunch_date TO lunching_date;
ALTER TABLE space_exploration_missions RENAME COLUMN Crew_Size to Crew_Sizes;
ALTER TABLE space_exploration_missions MODIFY COLUMN mission int;
ALTER TABLE space_exploration_missions MODIFY COLUMN target_planet bigint;
ALTER TABLE space_exploration_missions MODIFY COLUMN lunching_date year;

CREATE DATABASE day_3_assesement;
CREATE TABLE hospital_table(hospital_id int,
hospital_name varchar(30),
location varchar(20),
contact_number varchar(13),
specialities varchar(20), 
bed_capacity int);
select * from hospital_table;
insert into hospital_table values(1,"General_hospital_challakere","challakere","8899445561","all facilities",1000);
insert into hospital_table values(2,"City_hospital","challakere","7788445599","cardiology,neurology",200);
insert into hospital_table values(3,"Children hospital","challakere","8877884455","children specialist",100);
insert into hospital_table values(4,"old age hospital","challakere","9988774455","oncology",300);
insert into hospital_table values(5,"Lakshmi_narsimha","challakere","7788774455","neurology",250);
insert into hospital_table values(6,"Multi specialist","challakere","8877445511","Oncology",400);
insert into hospital_table values(7,"jayadeva hospital","Bengalore","8877445511","General Medicine",1000);
insert into hospital_table values(8,"Govt.General Hos","Chitradurga","884477551","General Medicine",1000);
insert into hospital_table values(9,"krishna_hospital","chitradurga","9977884455","General Medicine",1000);
insert into hospital_table values(10,"Sri ram","chitradurga","997784451","General Medicine",100);
insert into hospital_table values(11,"Nani Hospital","Challakere","887744551","Gastroenterology",500);
insert into hospital_table values(12,"Prabhas","Challakere","99884572","Oncology",800);
insert into hospital_table values(13,"Chamunde_hospital","Challakere","7788445561","Internal Medicine",1500);
insert into hospital_table values(14,"shiva_hospital","Challakere","774455124","Orthopedics",100);
insert into hospital_table values(15,"Adarsh_hospital","Challakere","8899774455","Oncology",700);
 
 CREATE TABLE scam_info(scam_id int,
 scan_type varchar(30),
 descriptions varchar(100),
 reported_date date,
 affected_people_count int);

insert into scam_info values(1,"bank fraud","fake calls posing as SBI bank officers","2024-10-01",5000);
insert into scam_info values(2,"ponzi scheme","investment fraud in chit fund companies","2023-11-22",3000);
insert into scam_info values(3,"online shopping scam","fake amazon and flipkart websites","2024-02-15",1200);
insert into scam_info values(4,"identity theft","Aadhar and pan details stolen for fraud","2023-09-05",4500);
insert into scam_info values(5,"fake job scam","fake IT jobs offered asking for money","2023-12-25",7000);
insert into scam_info values(6,"KYC update Scam","fraudsters sending sms to update KYC","2024-01-08",8500);
insert into scam_info values(7,"bank fraud","fake calls posing as SBI bank officers","2024-10-01",5000);
insert into scam_info values(8,"UPI Payment Fraud","Fake QR codes stealing money","2024-03-10",6000);
insert into scam_info values(9,"Fake Lottery Scam","You won ₹10 Lakh fraud messages","2024-02-07",4000);
insert into scam_info values(10,"Loan App Fraud","Fake loan apps misusing user data","2024-03-25",9000);
insert into scam_info values(11,"Matrimonial Fraud","Fake profiles scamming people for money","2024-12-10",3000);
insert into scam_info values(12,"Crypto Scam","Fraud investments in crypto trading","2024-01-05",5000);
insert into scam_info values(13,"Social Media Scam","Fake Instagram & Facebook giveaways","2024-02-20",7500);
insert into scam_info values(14,"SIM Swap Scam","Fraudsters duplicating SIM cards","2024-03-05",2500);
insert into scam_info values(15,"Fake NGO Donation","Fraudsters asking donations for fake causes","2024-10-30",2000);

select * from scam_info;

CREATE TABLE country_info(country_id int, 
country_name varchar(30),
capital varchar(40),
Population varchar(30), 
currency varchar(15),
official_lang varchar(20));
alter table country_info modify column currency varchar(50);

insert into country_info values(1, "India", "New Delhi", "1.4 Billion", "Indian Rupee", "Hindi, English");
insert into country_info values(2, "United States", "Washington, D.C.", "331 Million", "US Dollar", "English");
insert into country_info values(3, "China", "Beijing", "1.41 Billion", "Yuan", "Mandarin");
insert into country_info values(4, "Japan", "Tokyo", "126 Million", "Yen", "Japanese");
insert into country_info values(5, "United Kingdom", "London", "67 Million", "Pound Sterling", "English");
insert into country_info values(6, "Germany", "Berlin", "83 Million", "Euro", "German");
insert into country_info values(7, "France", "Paris", "67 Million", "Euro", "French");
insert into country_info values(8, "Russia", "Moscow", "144 Million", "Russian Ruble", "Russian");
insert into country_info values(9, "Brazil", "Brasilia", "213 Million", "Brazilian Real", "Portuguese");
insert into country_info values(10, "Canada", "Ottawa", "38 Million", "Canadian Dollar", "English, French");
insert into country_info values(11, "Australia", "Canberra", "25 Million", "Australian Dollar", "English");
insert into country_info values(12, "South Korea", "Seoul", "52 Million", "South Korean Won", "Korean");
insert into country_info values(13, "Mexico", "Mexico City", "126 Million", "Mexican Peso", "Spanish");
insert into country_info values(14, "Italy", "Rome", "60 Million", "Euro", "Italian");
insert into country_info values(15, "South Africa", "Pretoria", "59 Million", "South African Rand", "English, Zulu");



select * from scam_info;
select scan_type,descriptions from scam_info;
select * from scam_info where scan_type='bank fraud';
select * from scam_info where reported_date='2024-10-01';
select descriptions from scam_info where affected_people_count=5000;
select * from scam_info where scan_type='bank fraud' and affected_people_count=5000;
select * from country_info;
select * from country_info where official_lang='English';
select * from country_info where official_lang='English' and  capital='London';
select * from country_info where official_lang='English' or official_lang='Hindi, English';
select * from country_info where country_name='India' and capital='New Delhi' or 'London';
select * from hospital_table;
select * from hospital_table where bed_capacity=1000 and specialities='General Medicine';
select * from hospital_table where location='challakere' and specialities='General Medicine' or bed_capacity=1000;

select * from scam_info;
select country_name from country_info where Population='231 Million' and currency='Brazilian Real';
select * from country_info where country_id in(5,6,7,8);
select scan_type from scam_info where affected_people_count in(2000,3000,5000,8500);
select * from scam_info where scam_id not in(4,5,6);
select * from hospital_table where bed_capacity not in(200,100,300,400);

select * from hospital_table where bed_capacity between 200 and 1000;
select descriptions from scam_info where affected_people_count between 1000 and 20000;
select * from scam_info where affected_people_count not between 1000 and 5000;

select * from country_info where country_id not between 5 and 15;
update country_info set county_name='My India' where country_id=1;

select * from country_info;
update country_info set country_name='India' where country_id in(1,2,4,7);
use day_3_assesement;
update country_info set Population='300 Million' where country_id not in(2,3,5,7);
update country_info set official_lang='English' where country_id between 5 and 10;
update country_info set currency='Rupees' where country_id not between 1 and 10;
select country_name from country_info where country_name='Brazil';
select * from scam_info;
delete from scam_info where scam_id=1;
select * from scam_info where scan_type like 'K%';
select * from scam_info where scan_type like '%a%';
select * from scam_info where affected_people_count like '1%';
select * from scam_info where reported_date like '20%';
select * from scam_info where descriptions like '%f%';
select * from scam_info where affected_people_count not like '1%' or '3%';
select * from scam_info where affected_people_count not like '1%' and '3%';
