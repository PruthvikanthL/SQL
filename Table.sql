create table bank_info(bank_id int, bank_name varchar(50),
bank_loc varchar(50), 
ifsc_code varchar(30),
 no_of_cust int);
 
 insert into bank_info values(1,'pragathi_gramini_bank','challakere','pkgb008106',100),
 (2,'karnataka_gramina_bank','chitradurga','kagb009910',150),
 (3,'state_bank_of_india','davanagere','sbi001122',200),
 (4,'state_bank_of_karnataka','ballary','sbk003344',250),
 (5,'bank_of_baroda','koppala','bkb00443587',70),
 (6,'karnataka_gold_bank','hiriyuru','kgb005647',220),
 (7,'nimma_bank','sira','nmk890856',180),
 (8,'namma_nimma_bank','bengalore','nmnm996758',300),
 (9,'namma_nimma_bank','challakere','nmnm768954',250),
 (10,'namma_nimma_bank','chitradurga','nmnm102476',340),
 (11,'namma_nimma_bank','ballary','nmnm102476',340),
 (12,'namma_nimma_bank','challakere','nmnm768954',250),
 (13,'namma_nimma_bank','tumkur','nmnm996758',300),
 (14,'namma_nimma_bank','koppala','nmnm879689',340),
 (15,'namma_nimma_bank','challakere','nmnm675849',250);
 
 create table cust_info(cust_id int,
 cust_name varchar(40), 
 acc_no varchar(25),
 bank_id int ,
 balance float);
 
 insert into cust_info values(101,'chiru','1008081033456',1,1000),
 (102,'adarsh','1008081056748',2,2000),
 (103,'sunil','1008081067897',3,1500),
 (104,'surya','1008081065748',4,3000),
 (105,'srikanth','1008081065748',5,5000),
 (106,'raviteja','1008081056786',6,4000),
 (107,'shankar','1008081067898',7,2300),
 (108,'pruthvi','1008081033456',8,2000),
 (109,'kanth','1008081045675',9,1500),
 (110,'jeeva','1008081045675',10,2300),
 (111,'chiru','1008081045675',11,3000),
 (112,'thippa','1008081045675',12,2000),
 (113,'rangu','1008081033456',13,3000),
 (114,'swamy','1008081067898',14,2300),
 (115,'sudeep','1008081088779',15,3000);
 
create table loan_info(loan_id int, 
loan_name varchar(30), 
bank_id int, 
cust_id int, 
loan_amount float);

insert into loan_info values(1,'HomeLoan',1,101,500000),
(2,'EducationLoan',2,102,300000),
(3,'CarLoan',3,103,450000),
(4,'PersonalLoan',4,104,200000),
(5,'BusinessLoan',5,105,750000),
(6,'GoldLoan',6,106,150000),
(7,'StartupLoan',7,107,850000),
(8,'HomeLoan',1,101,500000),
(9,'HomeLoan',1,101,500000),
(10,'GoldLoan',6,106,150000),
(11,'GoldLoan',6,106,150000),
(12,'EducationLoan',2,102,300000),
(13,'EducationLoan',2,102,300000),
(14,'BusinessLoan',5,105,750000),
(15,'BusinessLoan',5,105,750000);

create table insurance_info(insr_id int, 
insr_type varchar(30), 
policy_no varchar(30), 
bank_id int,
cust_id int,
loan_id int);

 insert into insurance_info values(1,'Health','H001',1,101,1),
 (2,'Life','L002',2,102,2),
 (3,'Vehicle','V003',3,103,3),
 (4,'Travel','T004',4,104,4),
 (5,'Home','HM005',5,105,5),
 (6,'Business','B006',6,106,6),
 (7,'TermLife','TL007',7,107,7),
 (8,'Health','H001',1,101,1),
 (9,'Health','H001',1,101,1),
 (10,'Vehicle','V003',3,103,3),
 (11,'Vehicle','V003',3,103,3),
 (12,'Life','L002',2,102,2),
 (13,'Life','L002',2,102,2),
 (14,'Home','HM005',5,105,5),
 (15,'Home','HM005',5,105,5);

 