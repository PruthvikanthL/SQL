create table bmtc_details(busid int,
 routecode varchar(30),
busnumber varchar(30),
 drivername varchar(30),
 departuretime time,
 arrivaltime time,
 currentstop varchar(40),
 busstatus varchar(30),
 seatavailability boolean,
lastmaintenance date);

select * from bmtc_details;

insert into bmtc_details values(101,'R101','BMTC-500A','Adarsh m','06:30:00','09:00:00','Majestic','on route',true,'2024-03-15');
insert into bmtc_details values(102,'R102','BMTC-200B','Sunil M','07:00:00','10:00:00','Ragigudda','on route',true,'2025-01-01');
insert into bmtc_details values(103,'R103','BMTC-400','Amurth ','08:00:00','12:00:00','BTM','on route',true,'2023-02-02');
insert into bmtc_details values(104,'R104','BMTC-500','shikar','09:30:00','01:00:00','Microlayout','on route',true,'2022-01-03');
insert into bmtc_details values(105,'R105','BMTC-600','Sudeep','10:00:00','02:00:00','Jallahally','on route',true,'2020-02-02');
insert into bmtc_details values(106,'R106','BMTC-700','vinod','08:00:00','12:00:00','Yallanka','on route',true,'2022-05-03');
insert into bmtc_details values (107,'R107','BMTC-800a','rajesh','06:15:00','08:45:00','electronic city','on route',true,'2024-04-01');
insert into bmtc_details values (108,'R108','BMTC-900b','manoj','07:45:00','10:30:00','whitefield','on route',true,'2023-06-12');
insert into bmtc_details values (109,'R109','BMTC-100c','prakash','05:30:00','08:00:00','banashankari','on route',true,'2025-02-10');
insert into bmtc_details values (110,'R110','BMTC-110d','suresh','06:50:00','09:20:00','hebbal','on route',true,'2022-11-20');
insert into bmtc_details values (111,'R111','BMTC-120e','anil','08:30:00','11:00:00','shivajinagar','on route',true,'2023-09-05');
insert into bmtc_details values (112,'R112','BMTC-130f','mahesh','09:10:00','12:15:00','majestic','on route',true,'2024-01-30');
insert into bmtc_details values (113,'R113','BMTC-140g','ravi','10:20:00','01:40:00','kengeri','on route',true,'2021-12-15');
insert into bmtc_details values (114,'R114','BMTC-150h','lokesh','06:45:00','09:10:00','kr market','on route',true,'2023-07-22');
insert into bmtc_details values (115,'R115','BMTC-160j','vinay','07:25:00','10:00:00','peenya','on route',true,'2022-03-08');
insert into bmtc_details values (116,'R116','BMTC-170k','naveen','08:50:00','11:40:00','silk board','on route',true,'2024-05-18');
insert into bmtc_details values (117,'R117','BMTC-180l','chandan','09:35:00','12:45:00','jayanagar','on route',true,'2020-06-11');
insert into bmtc_details values (118,'R118','BMTC-190m','karthik','10:40:00','02:00:00','mysore road','on route',true,'2021-08-14');
insert into bmtc_details values (119,'R119','BMTC-200n','vikram','06:25:00','09:15:00','attibele','on route',true,'2023-04-29');
insert into bmtc_details values (120,'R120','BMTC-210p','suraj','07:55:00','10:50:00','basavanagudi','on route',true,'2022-02-17');

create table tourist_info(spotid int,
attractionname varchar(30),
category varchar(30),
address varchar(50),
contactnumber varchar(13),
opening_hours time,
entryfee float,
descriptions varchar(50),
nearesttransit varchar(20),
visitorrating int);

insert into tourist_info values (201, 'lalbagh', 'garden', 'bangalore', '7788996656', '06:00:00', 30.0, 'botanical garden', 'metro', 5);
insert into tourist_info values (202,'cubbon','park','bangalore','9955667744','05:30:00',100.0,'green space','metro',4);
insert into tourist_info values (203,'zoo','wildlife','bannerghatta','8899889922','09:00:00',80.0,'safari zoo','bus',5);
insert into tourist_info values (204,'vidhana','monument','bangalore','8105546615','10:00:00',90.0,'govt building','metro',4);
insert into tourist_info values (205,'iskcon','temple','rajajinagar','7766557788','07:30:00',60.0,'spiritual place','metro', 5);
insert into tourist_info values (206,'nandi','hill','chikballapur','87878798','06:00:00',50.0,'sunrise view','bus',5);
insert into tourist_info values (207,'wonderla','amusement','mysore road','7676878790','11:00:00',1200.0,'water rides','bus',5);
insert into tourist_info values (208,'film city','entertainment','bidadi','7766889977','10:00:00',600.0,'movie sets','train',4);
insert into tourist_info values (209,'aero museum','museum', 'airport road','9988776655','09:00:00', 50.0,'aircrafts','bus',4);
insert into tourist_info values (210,'comm street','shopping','shivajinagar','8890708989','10:30:00', 0.0,'street shopping','metro',5);
insert into tourist_info values (211,'ulsoor','lake','bangalore','9898090988','06:00:00', 100.0,'boating','metro',4);
insert into tourist_info values (212,'phoenix','mall','whitefield','7686789099','10:00:00', 100.0,'shopping','metro',5);
insert into tourist_info values (213,'art gallery','museum','mg road','7788998877','10:00:00', 30.0,'art exhibits','metro',4);
insert into tourist_info values (214,'sanctuary','wildlife','srirangapatna','9988990088','07:90:00', 70.0,'birds','train',5);
insert into tourist_info values (215,'bull temple','temple','bangalore','9988009988','06:00:00', 70.0,'nandi idol','metro',4);
insert into tourist_info values (216,'chunchi','waterfall','kanakapura','9090898980','08:00:00', 20.0,'rocky falls','bus',4);
insert into tourist_info values (217,'skandagiri','trek','chikballapur','9090887766','04:00:00', 250.0,'sunrise trek','bus',5);
insert into tourist_info values (218,'jp park','park','mathikere','90887089','05:00:00', 0.0, 'fountains','metro',4);
insert into tourist_info values (219,'guhantara','resort','kanakapura','9090809088','09:00:00', 1500.0,'cave resort','bus',5);
insert into tourist_info values (220,'ramoji','studio','hyderabad','9090807788','09:00:00', 1150.0,'film sets','train',5);

select * from tourist_info;
select sum(entryfee) as total_trip_fee from tourist_info ;
select count(visitorrating) as total_rating from tourist_info;
select max(entryfee) as highest_entry_fee from tourist_info ;
select min(visitorrating) as low_rated_place from tourist_info;
select avg(entryfee) as avg_of_entryfee from tourist_info;

select * from bmtc_details;
select sum(seatavailability) as total_seats from bmtc_details;
select count(busid) as number_of_buses from bmtc_details;
select max(departuretime) as highest_time from bmtc_details;
select min(arrivaltime) as quick_bus from bmtc_details;
select avg(lastmaintenance) as avg_maintance from bmtc_details;

select count(busnumber) from bmtc_details group by busstatus;
select sum(seatavailability) from bmtc_details group by busid having busid>105;
select count(routecode) from bmtc_details group by busstatus;
select max(entryfee) ,address from tourist_info group by address;
select min(visitorrating) from tourist_info group by nearesttransit;
select avg(entryfee) from tourist_info group by visitorrating having visitorrating>4;