create table student_info(stud_id int,
stud_name varchar(30),
stud_usn varchar(20),
stud_dob date,
year_of_passout year);

alter table student_info add constraint stud_pk primary key(stud_id);
alter table student_info add constraint dob_chk check(year_of_passout>2000);

insert into student_info values(100,'pruthvikanth','4EG21AI030','2002-10-28',2025),
(101,'adarsh','4EG21AI003','2003-09-28',2025),
(102,'nagesh','4EG21AI014','2003-07-17',2025),
(103,'hemalatha','4EG21AI019','2003-06-18',2025),
(104,'sonal','4EG21AI041','2003-10-12',2025),
(105,'mahalakshmi','4EG21AI022','2003-11-12',2025),
(106,'surya','4EG21AI044','2004-10-12',2025),
(107,'nikethan','4EG21AI021','2003-08-12',2025),
(108,'sunil','4EG21AI032','2003-07-11',2025),
(109,'amruthshikar','4EG21AI004','2003-04-04',2025),
(110,'sudeeppatil','4EG21AI041','2004-10-02',2025),
(111,'tahir','4EG21AI043','2004-11-12',2025),
(112,'shenkar','4EG21AI060','2000-10-19',2025),
(113,'raju','4EG21AI059','2000-11-12',2025),
(114,'vinod','4EG21AI050','2003-10-18',2025);

alter table student_info add column no_of_blocklogs int;
alter table student_info rename column stud_id to student_id;
alter table student_info rename column stud_name to student_name;
alter table student_info rename column stud_usn to student_usn;

update student_info set no_of_blocklogs=0 where student_id=100;
update student_info set no_of_blocklogs=3 where student_id=101;
update student_info set no_of_blocklogs=2 where student_id=102;
update student_info set no_of_blocklogs=1 where student_id=103;
update student_info set no_of_blocklogs=4 where student_id=104;

delete from student_info where student_id=110;
delete from student_info where student_id=111;
delete from student_info where student_id=112;
delete from student_info where student_id=113;
select * from student_info where student_id=100 and year_of_passout=2025;
select student_name from student_info where year_of_passout=2025 or no_of_blocklogs=3;
select * from student_info where student_id in(101,102,103,104,105);
select * from student_info where student_id not in(108,109,110,105);
select * from student_info where student_id between 105 and 110;
select * from student_info where student_id not between 100 and 105;
select count(student_id)  from student_info;
select max(no_of_blocklogs) as highest_blocklogs from student_info;
select min(no_of_blocklogs) as lowest_blocklogs from student_info;
select avg(no_of_blocklogs) as avg_of_blocklogs from student_info;
select sum(no_of_blocklogs) as total_blocklogs from student_info;

create table college_info(college_id int,
stu_id int,
college_name varchar(100),
college_loc varchar(50),
est_year year,
college_no int);

alter table college_info add constraint col_pk primary key(college_id);
alter table college_info add constraint est_chk check(est_year>1990);
select * from student_info;
alter table college_info add constraint for_ky foreign key (stu_id) references student_info(student_id) on update cascade;

insert into college_info values(200,100,'Government Engineering college','challakere',2021,400),
(201,101,'GEC challakere','challakere',2021,401),
(202,102,'Sjmit chitradurga','chitradurga',2000,402),
(203,103,'sharada college','challakere',2002,403),
(204,104,'adarsh college','ballary',2005,404),
(205,105,'klv college','sulya',2000,405),
(206,106,'Gec koppala','koppala',2000,406),
(207,107,'Gec durga','durga',2005,407),
(208,108,'Bit college','benglore',2000,408),
(209,109,'Reva college','bengalore',2000,409),
(214,114,'nikethan college','udupi',2006,414);

alter table college_info add column princi_name varchar(30);
alter table college_info rename column college_id to coll_id;
alter table college_info rename column college_name to coll_name;
alter table college_info rename column college_loc to coll_loc;

alter table college_info modify column coll_id bigint;
alter table student_info modify column student_id bigint;
alter table college_info modify column college_no bigint;
select * from college_info;
update college_info set princi_name='bennal' where coll_id=200;
update college_info set princi_name='sudhakar' where coll_id=201;
update college_info set princi_name='kanth' where coll_id=202;
update college_info set princi_name='narayana' where coll_id=203;
update college_info set princi_name='nambi narayanaa' where coll_id=204;

delete from college_info where coll_id=205;
delete from college_info where coll_id=206;
delete from college_info where coll_id=207;
delete from college_info where coll_id=208;

select * from student_info s inner join college_info c on s.student_id=c.stu_id; 
select * from student_info s left join college_info c on s.student_id=c.stu_id;
select * from student_info s right join college_info c on s.student_id=c.stu_id;
select * from college_info where college_id=200 and college_no=400;
select * from college_info where college_id=201 or college_no=401;
select * from college_info where college_id in(201,202,204,208);
select * from college_info where college_id not in(208,210,211);
select * from college_info where college_id between 200 and 208;
select * from college_info where college_id not between 200 and 208;
select count(college_id) from college_info;
select max(est_year)as recent_college from college_info;
select min(est_year) as old_college from college_info; 
