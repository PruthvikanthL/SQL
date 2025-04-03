create table furniture_info(
furniture_id int,
furniture_name varchar(30),
furniture_type enum('chair','table','sofa','bed','cabinet','shelf','desk'),
main_material varchar(30),
color_shade varchar(20),
size_details int,
net_weight int,
cost_price int,
units_available int,
brand_maker varchar(30));

select * from furniture_info;
desc furniture_info;

alter table furniture_info add constraint fur_id unique(furniture_id);
alter table furniture_info add constraint fur_name unique(furniture_name);
alter table furniture_info modify column main_material varchar(40)  not null;
alter table furniture_info modify column color_shade varchar(30) not null;
alter table furniture_info add constraint check(net_weight>5);
alter table furniture_info add constraint cos_pri check(cost_price>5000);

insert into furniture_info values(1,'adarsh chairs','chair','sheesham','brown',90,12,7500,15,'adarsh_brands'),
(2,'shikar_table','table','teak','wood',180,55,22000,8,'shikar_brands'),
(3,'Pruthvi_royal_sofa','sofa','rosewood','mahogany',200,85,28000,5,'pruthvi_brands'),
(4,'Sunil_bed','bed','sheesham','walnut',210,95,32000,60,'sunil_brands'),
(5,'nikethan_cab','cabinet','mango','honey',150,68,19500,10,'nikethan_brands'),
(6,'Amurth_Office_Desks','desk','Teak','Brown',140,40,12500,12,'amruth_brands'),
(7,'Amma_Carved_Shelf','shelf','Mahogany','Red',120,50,18000,7,'amma_brands'),
(8,'sudeep_Bamboo_Sofa','sofa','Bamboo','Beige',190,75,26000,4,'sudeep_brands'),
(9,'chiru_Pooja_Cab','cabinet','Sandal','Natural',110,35,30000,3,'chiru_brands'),
(10,'koti_Study_Table','table','EngWood','White',100,28,6200,20,'koti_brands'),
(11,'tarun_Swing_Chair','chair','Rosewood','Gold',75,30,9800,9,'tarun_brands'),
(12,'Ajay_TV_Cab','cabinet','Walnut','Brown',170,60,23000,5,'ajay_brands'),
(13,'surya_Work_Desk','desk','Metal','Black',150,45,15500,8,'surya_brands'),
(14,'tahir_Walnut_Shelf','shelf','Walnut','Brown',100,48,21000,6,'tahir_brands'),
(15,'kanth_Coffee_Table','table','Glass','Gray',110,35,8800,14,'kanth_brands');

alter table furniture_info add column fur_man_loc varchar(30);
alter table furniture_info add column fur_life int;

update furniture_info set fur_man_loc='challakere' where furniture_id=1;
update furniture_info set fur_life=80 where furniture_id=1;
update furniture_info set fur_man_loc='chitradurga' where furniture_id=2;
update furniture_info set fur_life=70 where furniture_id=2;
update furniture_info set fur_man_loc='davanagere' where furniture_id=3;
update furniture_info set fur_life=88 where furniture_id=3;
update furniture_info set fur_man_loc='ballary' where furniture_id=4;
update furniture_info set fur_life=90 where furniture_id=4;
update furniture_info set fur_man_loc='pavagada' where furniture_id=5;
update furniture_info set fur_life=89 where furniture_id=5;
update furniture_info set fur_man_loc='doddaullarthy' where furniture_id=6;
update furniture_info set fur_life=100 where furniture_id=6;
update furniture_info set fur_man_loc='Hiriyur' where furniture_id=7;
update furniture_info set fur_life=90 where furniture_id=7;
update furniture_info set fur_man_loc='tumkur' where furniture_id=8;
update furniture_info set fur_life=50 where furniture_id=8;
update furniture_info set fur_man_loc='sira' where furniture_id=9;
update furniture_info set fur_life=78 where furniture_id=9;
update furniture_info set fur_man_loc='bengaluru_yalanka' where furniture_id=10;
update furniture_info set fur_life=66 where furniture_id=10;
update furniture_info set fur_man_loc='bengaluru_btm' where furniture_id=11;
update furniture_info set fur_life=89 where furniture_id=11;
update furniture_info set fur_man_loc='bengaluru_banashankari' where furniture_id=12;
update furniture_info set fur_life=90 where furniture_id=12;
update furniture_info set fur_man_loc='gadaga' where furniture_id=13;
update furniture_info set fur_life=70 where furniture_id=13;
update furniture_info set fur_man_loc='chikbalapura' where furniture_id=14;
update furniture_info set fur_life=86 where furniture_id=14;
update furniture_info set fur_man_loc='oballapura' where furniture_id=15;
update furniture_info set fur_life=87 where furniture_id=15;

create table  electronic_gadgets( gadget_id int,
gadget_name varchar(30),
gadget_type enum('mobile','laptop','tablet','smartwatch','tv','earbuds','speaker','camera'),
brand_name varchar(30),
model_number varchar(20),
battery_capacity int,
screen_size int,
processor_type varchar(30),
storage_capacity int,
price int);

desc electronic_gadgets;
alter table electronic_gadgets add constraint gad_id unique(gadget_id);
alter table electronic_gadgets add constraint mod_num unique(model_number);
alter table electronic_gadgets modify column brand_name varchar(30) not null;
alter table electronic_gadgets modify column price int not null;
alter table electronic_gadgets add constraint dev_pri check(price>10000);
alter table electronic_gadgets add constraint bat_cap check(battery_capacity>4000);

insert into electronic_gadgets values (1,'Redmi','mobile','Xiaomi','Redmi123',5000,6,'Snapabc',128,18000),  
(2,'Galaxy','mobile','Samsung','sumsung123',6000,6,'sumnsungabc',128,17000),  
(3,'Realme','mobile','Realme','realmeabc',5000,6,'realmepro',128,12000),  
(4,'Vivo','mobile','Vivo','vivoabc',5000,6,'vivoabc',128,20000),  
(5,'iPhone','mobile','Apple','apppleabc',5000,6,'appleabcd',128,15000),  
(6,'HP Pavilion','laptop','HP','HP',5000,15,'i5 12th',512,56000),  
(7,'OnePlus','laptop','OnePlus','oneplusabc',5000,17,'Ryzen9',1024,12000),  
(8,'MacBook Air','laptop','Apple','M2',5000,13,'M2abc',256,104000),  
(9,'iPad Air','tablet','Apple','iPadA5',7600,11,'M1',256,59000),  
(10,'Galaxy Tab S8','tablet','Samsung','GTabS8',8000,12,'SD8G1',128,66000),  
(11,'OnePlus W2','smartwatch','OnePlus','OPW2',5000,1,'SDW5',32,18000),  
(12,'Boat Airdopes','earbuds','Boat','BA441',5000,5,'BT5.2',32,11000),  
(13,'Sony Bravia','tv','Sony','Bravia55X',5000,55,'XR',32,84000),  
(14,'JBL PBox 310','speaker','JBL','JBL310',10400,6,'BT5.1',32,34000),  
(15,'Canon 1500D','camera','Canon','EOS1500D',5000,5,'DIGIC4+',64,41000);  

alter table  electronic_gadgets add column gadget_origin varchar(30);
alter table  electronic_gadgets add column gadget_life int;

update electronic_gadgets set gadget_origin='bengaluru' where gadget_id=1;
update electronic_gadgets set gadget_life=5 where gadget_id=1;
update electronic_gadgets set gadget_origin='chennai' where gadget_id=2;
update electronic_gadgets set gadget_life=6 where gadget_id=2;
update electronic_gadgets set gadget_origin='hyderabad' where gadget_id=3;
update electronic_gadgets set gadget_life=4 where gadget_id=3;
update electronic_gadgets set gadget_origin='mumbai' where gadget_id=4;
update electronic_gadgets set gadget_life=5 where gadget_id=4;
update electronic_gadgets set gadget_origin='delhi' where gadget_id=5;
update electronic_gadgets set gadget_life=6 where gadget_id=5;
update electronic_gadgets set gadget_origin='pune' where gadget_id=6;
update electronic_gadgets set gadget_life=8 where gadget_id=6;
update electronic_gadgets set gadget_origin='kolkata' where gadget_id=7;
update electronic_gadgets set gadget_life=7 where gadget_id=7;
update electronic_gadgets set gadget_origin='ahmedabad' where gadget_id=8;
update electronic_gadgets set gadget_life=9 where gadget_id=8;
update electronic_gadgets set gadget_origin='jaipur' where gadget_id=9;
update electronic_gadgets set gadget_life=7 where gadget_id=9;
update electronic_gadgets set gadget_origin='nagpur' where gadget_id=10;
update electronic_gadgets set gadget_life=7 where gadget_id=10;
update electronic_gadgets set gadget_origin='mysuru' where gadget_id=11;
update electronic_gadgets set gadget_life=5 where gadget_id=11;
update electronic_gadgets set gadget_origin='coimbatore' where gadget_id=12;
update electronic_gadgets set gadget_life=4 where gadget_id=12;
update electronic_gadgets set gadget_origin='bhopal' where gadget_id=13;
update electronic_gadgets set gadget_life=10 where gadget_id=13;
update electronic_gadgets set gadget_origin='lucknow' where gadget_id=14;
update electronic_gadgets set gadget_life=6 where gadget_id=14;
update electronic_gadgets set gadget_origin='visakhapatnam' where gadget_id=15;
update electronic_gadgets set gadget_life=9 where gadget_id=15;


create table  restaurant_info(rest_id int,
rest_name varchar(30),
location varchar(30),
food_type enum('indian','chinese','italian','karnataka','south_karnataka','north_karnataka','east_karnatka'),
owner_name varchar(30),
seating_capacity int,
opening_hours int,
average_rating int,
menu_specialty varchar(10),
cont_number varchar(15));

desc restaurant_info;
alter table restaurant_info add constraint res_id unique(rest_id);
alter table restaurant_info add constraint con_no unique(cont_number);
alter table restaurant_info modify column location varchar(30) not null;
alter table restaurant_info modify column seating_capacity int not null;
alter table restaurant_info add constraint seat_Cap check(seating_capacity>2);
alter table restaurant_info add constraint open_hours check(opening_hours>5);
 
insert into restaurant_info values(1,'adu_rest','challekre','indian','adarsh_m',4,6,8,'biriyani','9988775566'),
(2,'amruth_sagar','hubli','north_karnataka','amurth_shikar',15,8,8,'joladrotti','9876543211'),  
(3,'pruthvi_empire','challakere','karnataka','pruthvi',20,6,7,'chicken','9876543212'),  
(4,'sunil_nalapaka','mysuru','south_karnataka','sunil',12,7,9,'meals','9876543213'),  
(5,'sudeep_ratna','belagavi','north_karnataka','shankar',18,9,9,'idli','9876543214'),  
(6,'bigg_boss','davanagere','karnataka','surya',25,10,8,'bennedosa','9876543215'),  
(7,'hallimane','chikmagalur','karnataka','darshan',30,11,9,'ragimudde','9876543216'),  
(8,'nam_mane','doddaullarthy','karnataka','pruthvi_kanth',22,6,8,'meals','9876543217'),  
(9,'mayura','shivamogga','karnataka','ajay',16,7,7,'chitranna','9876543218'),  
(10,'rangu_taj','bijapur','north_karnataka','rangawamy',20,8,9,'biryani','9876543219'),  
(11,'greenland','tumkur','karnataka','bharath',14,6,8,'chapati','9876543220'),  
(12,'coastal_spice','udupi','karnataka','girish',24,9,9,'fishcurry','9876543221'),  
(13,'dosa_mane','mandya','south_karnataka','mahesh',12,7,9,'masaladosa','9876543222'),  
(14,'ruchi_sagar','hassan','karnataka','santosh',10,6,7,'akkirotti','9876543223'),  
(15,'sapna_hotel','gadag','north_karnataka','veeresh',18,9,8,'joladrotti','9876543224');  

alter table restaurant_info add column del_avil boolean;
alter table restaurant_info add column est_year int;

update restaurant_info set del_avil=true where rest_id=1;
update restaurant_info set est_year=2002 where rest_id=1;
update restaurant_info set del_avil = true where rest_id = 2;
update restaurant_info set est_year = 2005 where rest_id = 2;
update restaurant_info set del_avil = false where rest_id = 3;
update restaurant_info set est_year = 2010 where rest_id = 3;
update restaurant_info set del_avil = true where rest_id = 4;
update restaurant_info set est_year = 1998 where rest_id = 4;
update restaurant_info set del_avil = false where rest_id = 5;
update restaurant_info set est_year = 2015 where rest_id = 5;
update restaurant_info set del_avil = true where rest_id = 6;
update restaurant_info set est_year = 2008 where rest_id = 6;
update restaurant_info set del_avil = true where rest_id = 7;
update restaurant_info set est_year = 2000 where rest_id = 7;
update restaurant_info set del_avil = false where rest_id = 8;
update restaurant_info set est_year = 2012 where rest_id = 8;
update restaurant_info set del_avil = true where rest_id = 9;
update restaurant_info set est_year = 2018 where rest_id = 9;
update restaurant_info set del_avil = false where rest_id = 10;
update restaurant_info set est_year = 1995 where rest_id = 10;
update restaurant_info set del_avil = true where rest_id = 11;
update restaurant_info set est_year = 2020 where rest_id = 11;
update restaurant_info set del_avil = false where rest_id = 12;
update restaurant_info set est_year = 2003 where rest_id = 12;
update restaurant_info set del_avil = true where rest_id = 13;
update restaurant_info set est_year = 2016 where rest_id = 13;
update restaurant_info set del_avil = true where rest_id = 14;
update restaurant_info set est_year = 1999 where rest_id = 14;
update restaurant_info set del_avil = false where rest_id = 15;
update restaurant_info set est_year = 2007 where rest_id = 15;

create table olympics_info (
    olympic_id int,
    year int,
    host_city varchar(30),
    host_country varchar(30),
    total_sports int,
    total_athletes int,
    participating_countries int,
    event_type enum('summer', 'winter'),
    opening_date date,
    closing_date date
);

desc olympics_info;

alter table olympics_info add constraint olympic_id_unique unique(olympic_id);

alter table olympics_info modify column host_city varchar(30) not null;
alter table olympics_info modify column total_athletes int not null;
alter table olympics_info add constraint min_athletes check(total_athletes > 500);
alter table olympics_info add constraint min_countries check(participating_countries > 10);

insert into olympics_info values
(1,2000,'sydney','australia',28,10651,199,'summer','2000-09-15','2000-10-01'),
(2,2004,'athens','greece',28,10500,201,'summer','2004-08-13','2004-08-29'),
(3,2008,'beijing','china',28,11028,204,'summer','2008-08-08','2008-08-24'),
(4,2012,'london','unitedkingdom',26,10568,204,'summer','2012-07-27','2012-08-12'),
(5,2016,'riodejaneiro','brazil',28,11238,207,'summer','2016-08-05','2016-08-21'),
(6,2020,'tokyo','japan',33,11500,206,'summer','2021-07-23','2021-08-08'),
(7,2002,'saltlakecity','usa',15,2399,78,'winter','2002-02-08','2002-02-24'),
(8,2006,'turin','italy',15,2508,80,'winter','2006-02-10','2006-02-26'),
(9,2010,'vancouver','canada',15,2563,82,'winter','2010-02-12','2010-02-28'),
(10,2014,'sochi','russia',15,2851,88,'winter','2014-02-07','2014-02-23'),
(11,2018,'pyeongchang','southkorea',15,2920,92,'winter','2018-02-09','2018-02-25'),
(12,2022,'beijing','china',15,2871,91,'winter','2022-02-04','2022-02-20'),
(13,1998,'nagano','japan',14,2176,72,'winter','1998-02-07','1998-02-22'),
(14,1994,'lillehammer','norway',12,1737,67,'winter','1994-02-12','1994-02-27'),
(15,1992,'barcelona','spain',25,9356,169,'summer','1992-07-25','1992-08-09');


alter table olympics_info add column broadcasting_available boolean;
alter table olympics_info add column first_year_participated int;

update olympics_info set broadcasting_available = true where olympic_id = 1;
update olympics_info set first_year_participated = 1896 where olympic_id = 1;
update olympics_info set broadcasting_available = true where olympic_id = 2;
update olympics_info set first_year_participated = 1904 where olympic_id = 2;
update olympics_info set broadcasting_available = false where olympic_id = 3;
update olympics_info set first_year_participated = 1912 where olympic_id = 3;
update olympics_info set broadcasting_available = true where olympic_id = 4;
update olympics_info set first_year_participated = 1924 where olympic_id = 4;
update olympics_info set broadcasting_available = false where olympic_id = 5;
update olympics_info set first_year_participated = 1936 where olympic_id = 5;
update olympics_info set broadcasting_available = true where olympic_id = 6;
update olympics_info set first_year_participated = 1948 where olympic_id = 6;
update olympics_info set broadcasting_available = true where olympic_id = 7;
update olympics_info set first_year_participated = 1956 where olympic_id = 7;
update olympics_info set broadcasting_available = false where olympic_id = 8;
update olympics_info set first_year_participated = 1964 where olympic_id = 8;
update olympics_info set broadcasting_available = true where olympic_id = 9;
update olympics_info set first_year_participated = 1972 where olympic_id = 9;
update olympics_info set broadcasting_available = false where olympic_id = 10;
update olympics_info set first_year_participated = 1980 where olympic_id = 10;
update olympics_info set broadcasting_available = true where olympic_id = 11;
update olympics_info set first_year_participated = 1988 where olympic_id = 11;
update olympics_info set broadcasting_available = false where olympic_id = 12;
update olympics_info set first_year_participated = 1992 where olympic_id = 12;
update olympics_info set broadcasting_available = true where olympic_id = 13;
update olympics_info set first_year_participated = 1998 where olympic_id = 13;
update olympics_info set broadcasting_available = true where olympic_id = 14;
update olympics_info set first_year_participated = 2002 where olympic_id = 14;
update olympics_info set broadcasting_available = false where olympic_id = 15;
update olympics_info set first_year_participated = 2006 where olympic_id = 15;




