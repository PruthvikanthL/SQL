create table pkl_info(match_id int,
team_name varchar(30),
player_name varchar(30),
tatola_raids int,
successful_tackles int,
super_raids int,
do_or_die_points int,
super_tackles int,
green_card_count int,
raid_points int);

alter table pkl_info modify column match_id int not null unique;
alter table pkl_info rename column tatola_raids to total_raids;
alter table pkl_info modify column total_raids int not null unique;
alter table pkl_info modify column super_raids int not null unique;
alter table pkl_info modify column do_or_die_points int not null unique;
alter table pkl_info modify column super_tackles int not null unique;

desc pkl_info;

insert into pkl_info values(101,'BengaluruBulls','PawanSehrawat',18,3,2,5,0,1,14),
(102,'PatnaPirates','PradeepNarwal',15,2,4,6,1,0,12),
(103,'UMumba','FazelAtrachali',20,7,5,8,2,3,16),
(104,'JaipurPinkPanthers','DeepakHooda',14,4,6,9,3,1,10),
(105,'BengalWarriors','MahinderSingh',16,1,7,10,4,0,11),
(106,'TamilThalaivas','AjayThakur',13,3,8,11,5,0,9),
(107,'DabangDelhi','NaveenKumar',22,2,9,12,6,1,16),
(108,'GujaratGiants','SunilKumar',17,6,10,13,7,0,13),
(109,'HaryanaSteelers','VikashKandola',21,2,11,14,8,0,12),
(110,'TeluguTitans','SiddharthDesai',19,1,12,15,9,1,13),
(111,'PatnaPirates','NeerajKumar',6,5,13,16,10,0,3),
(112,'UMumba','AbhishekSingh',28,2,14,17,11,0,13),
(113,'BengaluruBulls','MahendraSingh',23,6,15,18,12,7,20),
(114,'JaipurPinkPanthers','ArjunDeshwal',24,1,16,19,13,2,11),
(115,'BengalWarriors','MohammadNabibakhsh',25,4,17,20,14,4,12),
(116,'BengaluruWarriors','Pruthviraj',26,7,18,21,15,7,10),
(117,'HyderabadWarriors','Kanth',27,5,19,22,16,1,15),
(118,'RocketDelhi','Srikanth',29,2,20,23,17,4,8),
(119,'BengaluruTigers','Rithvik',30,4,21,24,18,2,9),
(120,'BengaluruLions','Raju',31,4,22,25,19,1,7);

select * from pkl_info;

alter table pkl_info add column player_position int; 
alter table pkl_info add column team_rank int;

update pkl_info set player_position=1 where match_id=101;
update pkl_info set team_rank=1 where match_id=101;
update pkl_info set player_position=2 where match_id=102;
update pkl_info set team_rank=2 where match_id=102;
update pkl_info set player_position=3 where match_id=103;
update pkl_info set team_rank=3 where match_id=103;
update pkl_info set player_position=4 where match_id=104;
update pkl_info set team_rank=4 where match_id=104;
update pkl_info set player_position=5 where match_id=105;
update pkl_info set team_rank=5 where match_id=105;
update pkl_info set player_position=6 where match_id=106;
update pkl_info set team_rank=6 where match_id=106;
update pkl_info set player_position=7 where match_id=107;
update pkl_info set team_rank=7 where match_id=107;
update pkl_info set player_position=8 where match_id=108;
update pkl_info set team_rank=8 where match_id=108;
update pkl_info set player_position=9 where match_id=109;
update pkl_info set team_rank=9 where match_id=109;
update pkl_info set player_position=10 where match_id=110;
update pkl_info set team_rank=10 where match_id=110;
update pkl_info set player_position=11 where match_id=111;
update pkl_info set team_rank=11 where match_id=111;
update pkl_info set player_position=12 where match_id=112;
update pkl_info set team_rank=12 where match_id=112;
update pkl_info set player_position=13 where match_id=113;
update pkl_info set team_rank=13 where match_id=113;
update pkl_info set player_position=14 where match_id=114;
update pkl_info set team_rank=14 where match_id=114;
update pkl_info set player_position=15 where match_id=115;
update pkl_info set team_rank=15 where match_id=115;
update pkl_info set player_position=16 where match_id=116;
update pkl_info set team_rank=16 where match_id=116;
update pkl_info set player_position=17 where match_id=117;
update pkl_info set team_rank=17 where match_id=117;
update pkl_info set player_position=18 where match_id=118;
update pkl_info set team_rank=18 where match_id=118;
update pkl_info set player_position=19 where match_id=119;
update pkl_info set team_rank=19 where match_id=119;
update pkl_info set player_position=120 where match_id=120;
update pkl_info set team_rank=120 where match_id=120;
update pkl_info set player_position=121 where match_id=121;
update pkl_info set team_rank=121 where match_id=121;

select * from pkl_info;

select count(player_name) from pkl_info;
select max(super_tackles) from pkl_info;
select min(total_raids) from pkl_info;
select sum(green_card_count) from pkl_info;
select avg(raid_points) as average_raid_points from pkl_info;

select max(total_raids),team_name from pkl_info group by team_name;
select min(super_tackles),player_name from pkl_info group by match_id having match_id > 2;
select count(raid_points),player_name from pkl_info group by match_id ;
select sum(total_raids) from pkl_info group by team_rank;

create table movies_info(movie_id int not null unique,
movie_title varchar(30) not null unique,
director_name varchar(40),
release_year int,
genre varchar(20),
rating int,
duration_minutes time,
budget int not null ,
box_offici_collection int not null,
lead_actor varchar(30) not null);

insert into movies_info values (1, 'Kshanam', 'Ravikanth Perepu', 2016, 'Thriller', 8, '02:15:00', 10, 40, 'Adivi Sesh'),
(2, 'Evaru', 'Venkat Ramji', 2019, 'Crime, Thriller', 7, '02:15:00', 15, 50, 'Adivi Sesh'),
(3, 'Goodachari', 'Sashi Kiran Tikka', 2018, 'Action, Thriller', 8, '02:25:00', 25, 70, 'Adivi Sesh'),
(4, 'Sita On The Road', 'Mahi V Raghav', 2016, 'Drama', 7, '02:00:00', 5, 20, 'Adivi Sesh'),
(5, 'Baaghi', 'Raghava Lawrence', 2014, 'Action, Drama', 6, '02:10:00', 30, 60, 'Adivi Sesh'),
(6, 'V', 'Mohankrishna Indraganti', 2020, 'Action, Thriller', 7, '02:20:00', 40, 80, 'Adivi Sesh'),
(7, 'Savyasachi', 'Chandoo Mondeti', 2018, 'Action, Thriller', 6, '02:25:00', 35, 65, 'Adivi Sesh'),
(8, 'Eega', 'S. S. Rajamouli', 2012, 'Fantasy, Drama', 8, '02:05:00', 30, 80, 'Nani'),
(9, 'Bhale Bhale Magadivoy', 'Maruthi Dasari', 2015, 'Comedy, Romance', 8, '02:00:00', 10, 45, 'Nani'),
(10, 'Ninnu Kori', 'Shiva Nirvana', 2017, 'Romance, Drama', 7, '02:20:00', 15, 50, 'Nani'),
(11, 'Jersey', 'Gowtham Tinnanuri', 2019, 'Sports, Drama', 9, '02:30:00', 25, 90, 'Nani'),
(12, 'Ante Sundaraniki', 'Vivek Athreya', 2022, 'Comedy, Drama', 7, '02:15:00', 12, 55, 'Nani'),
(13, 'MCA (Middle-Class Abbayi)', 'Venu Sri Ram', 2017, 'Action, Comedy', 7, '02:10:00', 20, 60, 'Nani'),
(14, 'Tuck Jagadish', 'Shiva Nirvana', 2021, 'Drama', 6, '02:20:00', 30, 70, 'Nani'),
(15, 'Shyam Singha Roy', 'Rathna Kumar', 2021, 'Fantasy, Drama', 8, '02:30:00', 25, 75, 'Nani'),
(16, 'Majnu', 'Virinchi Varma', 2016, 'Romance, Comedy', 7, '02:15:00', 12, 45, 'Nani'),
(17, 'Naanu Ki Prematho', 'Vamsi Paidipally', 2016, 'Romance, Drama', 6, '02:30:00', 20, 60, 'Nani'),
(18, 'Pelli Sandadi', 'K Raghavendra Rao', 1996, 'Romance, Drama', 8, '02:00:00', 15, 50, 'Nani'),
(19, 'Dhamaka', 'Trinadha Rao Nakkina', 2022, 'Action, Comedy', 8, '02:10:00', 18, 65, 'Nani'),
(20, 'pilla jamindar', 'Gowtham Tinnanuri', 2019, 'drama ', 9, '02:15:00', 22, 85, 'Nani');

alter table movies_info add column production_company varchar(20);
alter table movies_info add column box_office_rank  int;

select * from movies_info;

select movie_title from movies_info where lead_actor='nani';
select max(rating) from movies_info;
select min(budget) from movies_info;
select count(movie_title) from movies_info where lead_actor='nani';
select avg(budget) from movies_info where lead_actor='Adivi Sesh';
