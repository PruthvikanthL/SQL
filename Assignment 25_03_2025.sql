create database day_4_assesement;

create table cricket_info(player_id int ,
player_name varchar(50),
batting_avg float,
total_wickets int,
strike_rate float,
centuries int,
matches_played int,
team_name varchar(50), 
debut_year int,
country_origin varchar(50));
select * from cricket_info;
use day_4_assesement;
insert into cricket_info values(1,'virat kohli',53.2,4,138.5,74,300,'india',2008,'india');
insert into cricket_info values(2,'steve smith',51.4,5,129,40,250,'australia',2010,'australia');
insert into cricket_info values(3,'jeo root',49.7,6,128.2,30,230,'endladnd',2012,'england');
insert into cricket_info values(4, 'Babar Azam', 48.5, 2, 133.1, 25, 180, 'Pakistan', 2015, 'Pakistan');
insert into cricket_info values(5,'kane williamson',50.1,3,127.5,35,220,'New zealand',2010,'new zealand');
insert into cricket_info values(6,'rohit sharma',48.2,2,140.8,42,250,'india',2007,'india');
insert into cricket_info values(7,'david warner',46.5,1,137,45,270,'austealia',2009,'australia');
insert into cricket_info values(8,'ben stokes',42.8,120,125.6,12,210,'england',2013,'endland');
insert into cricket_info values(9,'marnus labuschagne',47.1,4,124.5,15,120,'australia',2018,'australia');
insert into cricket_info values(10,'quinto de kock',28.7,200,120.3,0,150,'south africa',2012,'south africa');
insert into cricket_info values(11,'rashid khan',28.7,200,145.8,2,180,'afghanistan',2017,'afghanistan');
insert into cricket_info values(12,'jasprit bumrah',12.4,250,120.3,0,150,'india',2016,'india');
insert into cricket_info values(13,'shakib al hasan',38.6,150,127.9,10,210,'bangladesh',2007,'bangladesh');
insert into cricket_info values(14,'kagiso rabada',14.5,270,123.2,0,160,'south africa',2015,'south africa');
insert into cricket_info values(15,'trent boult',15.3,280,119.7,0,170,'new zealand',2011,'new zealand');

create table football_info(player_id int,
full_name varchar(50),
goals_scored int,
assists int,
jerset_number int,
red_cards int,
club_team varchar(50),
contract_year int,
playing_position varchar(30),
nationality varchar(50));

insert into football_info values(101,'lionel messi',805,350,10,5,'inter miami',2023,'forward','argentina');
insert into football_info values(102,'cristiano ronaldo',850,250,7,7,'al nassr',2022,'forward','portugal');
insert  into football_info values(103,'neymar jr',420,210,10,12,'al hilal',2023,'forward','brazil');
insert into football_info values(104,'kylian mbappe',250,150,7,3,'psg',2017,'forward','france');
insert into football_info values(105,'kevin de bruyne',140,220,17,2,'man city',2015,'midfielder','belgium');
insert into football_info values(106,'mohamed salah',280,120,11,4,'liverpool',2017,'forward','egypt');
insert into football_info values(107,'robert lewandowski',580,140,9,2,'barcelone',2022,'forward','poland');
insert into football_info values(108,'bruno fernandes',110,160,8,3,'man utd',2020,'midfielder','portugal');
insert into football_info values(109,'sadio mane',250,130,10,5,'al nassr',2023,'forward','senegal');
insert into football_info values(110,'rrling haaland',210,80,9,1,'man city',2022,'forward','norway');
insert into football_info values(111,'vinicus jr',90,75,20,2,'real madrid',2018,'forward','brazil');
insert into football_info values(112,'sergio ramos',105,50,4,30,'sevilla',2023,'defender','spain');
insert into football_info values(113,'virgil van dijk',35,20,4,8,'liverpool',2018,'defender','netherlands');
insert into football_info values(114,'casemiro',40,60,14,12,'man utd',2022,'midfielder','brazil');
insert into football_info values(115,'march andre ter stegen',0,5,1,0,'barcelon',2014,'goalkeeper','germany');

select * from football_info;
select * from cricket_info;
alter table cricket_info add column bowling_avg int;
alter table cricket_info add column catches_taken int;
alter table football_info add column location varchar(20);
alter table football_info add column clean_sheets int;

alter table football_info rename column clean_sheets to clean_location;
alter table football_info rename column club_team to team_club;
alter table cricket_info rename column country_origin to country;
alter table cricket_info rename column player_name to playes;

update cricket_info set total_wickets =8 where player_id=1 and debut_year=2008;
update cricket_info set strike_rate=150 where player_id=1 and debut_year=2008;
update cricket_info set centuries=80 where playes='virat kohli' or total_wickets=8;
update cricket_info set total_wickets=8 where player_id in(1,3,5,6);
update cricket_info set strike_rate=100 where player_id not in(2,4,5,7,8,9);

update football_info set assists=350 where jerset_number=10 and player_id=101;
update football_info set red_cards=10 where full_name='lionel messi' or team_club='inter miami';
update football_info set goals_scored=100 where player_id in(1,2,3,4);
update football_info set assists=400 where player_id not in(2,4,6,8,9,10);
update football_info set contract_year=2024 where nationality='argentina' and jerset_number=10;

delete from cricket_info where player_id=3;
delete from cricket_info where players='Babar Azam' and player_id=4;
delete from cricket_info where total_wickets=2;
delete from football_info where player_id=104;
delete from football_info where nationality ='argentina';
delete from football_info where jerset_number=10;

select * from cricket_info where strike_rate=100;
select * from cricket_info where matches_played=300 and total_wickets=8;
select * from cricket_info where strike_rate=100 or debut_year=2008;
select * from cricket_info where player_id in(1,2,5,6,4,6,7,8);
select * from cricket_info where player_id not in(5,7,8,9,10);
select * from cricket_info where player_id between 6 and 15;
select * from cricket_info where strike_rate not between 100 and 140;
select * from cricket_info where playes like '%a%';
select * from cricket_info where country not like 'n%';

select * from football_info;

select * from football_info where  goals_scored=850;
select * from football_info where player_id=102 and jerset_number=7;
select * from football_info where assists=400 or red_cards=7;
select * from football_info where player_id in(102,105,108,110,112);
select * from football_info where player_id not in(107,108,110,111);
select * from football_info where contract_year between 2017 and 2025;
select * from football_info where jerset_number not between 3 and 10;
select * from football_info where nationality like 'p%';
select * from football_info where playing_position not like '%f';



