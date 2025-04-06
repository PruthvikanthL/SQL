create table criminals(cri_id int primary key,
first_name varchar(30),
last_name varchar(30),
alias varchar(30),
dob date,
gender enum('male','female','other'),
nationality varchar(30),
address varchar(50),
crimehistory varchar(100),
current_status enum('jailed','released','wanted'));

desc criminals;
alter table criminals modify column gender enum('male','female','other') not null;
alter table criminals add constraint cri_iden unique(cri_id);
alter table criminals add constraint dob_year check(dob>'2000-01-01');



create table cases(case_id int primary key,
case_title varchar(30),
casetype enum('murder','theft','cybercrime','other'),
crime_date year,
crime_loc varchar(50),
leadinvestigator varchar(50),
casestatus enum('opne','closed','under_investigation'),
evidence_collected varchar(30),
suspect_id varchar(30),
verdict varchar(40),
cri_id int,
foreign key(cri_id) references criminals(cri_id));

desc cases;

alter table cases add constraint cas_id unique(case_id);
alter table cases modify column casetype enum('murder','theft','cybercrime','other') not null;
alter table cases modify column suspect_id int;

alter table cases add constraint susp_id check(suspect_id>0);

create table officers(officer_id int primary key,
first_name varchar(30),
last_name varchar(30),
badge_no varchar(40),
rank_name varchar(30),
dep varchar(30),
station varchar(50),
con_num varchar(15),
mail varchar(100),
assignedcases varchar(60),
cri_id int,
case_id int,
foreign key(cri_id) references criminals(cri_id),
foreign key(case_id) references cases(case_id));

desc officers;

alter table officers add constraint off_id unique(officer_id);
alter table officers modify column badge_no varchar(40) not null;
alter table officers modify column con_num bigint;
alter table officers add constraint con_chk_no check(con_num>=10);
alter table officers drop constraint con_chk_no ;


create table evidence(evi_id int primary key,
case_id int,
evi_type varchar(30),
evi_desc varchar(50),
collectedby varchar(60),
collectiondate date,
storage_loc varchar(50),
chain_of_custody varchar(50),
forensicanalysis varchar(50),
currenstatus enum('available','lost','tampered','etc'),
cri_id int,
officer_id int,
foreign key(case_id) references cases(case_id),
foreign key(cri_id) references criminals(cri_id),
foreign key(officer_id) references officers(officer_id));

desc evidence;

alter table evidence add constraint ev_id unique(evi_id);
alter table evidence modify column currenstatus enum('available','lost','tampered','etc') not null;
alter table evidence add constraint chk_col_date check(collectiondate>'2000-01-01');

create table courtrecords(record_id int,
case_id int,
judge_name varchar(40),
prosecutor varchar(50),
defenseattorney varchar(50),
hearing_date date,
verdict enum('guilty','not_guilty','pending'),
sentence varchar(30),
court_loc varchar(40),
appeal_status varchar(40),
cri_id int,
officer_id int,
evi_id int,
foreign key(case_id) references cases(case_id),
foreign key(cri_id) references criminals(cri_id),
foreign key(officer_id) references officers(officer_id),
foreign key(evi_id) references evidence(evi_id));

desc courtrecords;
alter table courtrecords add constraint rec_id unique(record_id);
alter table courtrecords modify column verdict enum('guilty','not_guilty','pending') not null;
alter table courtrecords add constraint her_date check(hearing_date>'2000-01-01');

desc criminals;


desc evidence;
desc courtrecords;

insert into criminals values(1000,'Santhosh','nayak','santhu','2003-02-03','male','indian','Hiriyur first block','murder attempt','jailed');
insert into criminals values(1001,'suresh','reddy','suri','2003-05-05','male','indian','ballary door no 103','kidnap','wanted'),
(1002,'adarsh','naid','adu','2003-05-07','male','indian','dharwad 18th block','murder case','jailed'),
(1003,'shenkar','reddy','shenku','2003-06-07','male','indian','davanagere 6th block','drug case ','jailed'),
(1004,'Suresh','Hegde','adu','2003-02-11','female','indian','Vijayapura door no 258','extortion','jailed'),
(1005,'Umesh','Reddy','kalla','2003-02-08','male','indian','Mysuru door no 72','extortion','wanted'),
(1006,'Shankar','Kulkarni','adu','2003-03-31','female','indian','Mandya door no 409','murder','jailed'),
(1007,'Mahesh','Rao','benki','2003-11-06','male','indian','Vijayapura door no 403','bribery','jailed'),
(1008,'Adarsh','Hegde','gunda','2003-12-01','female','indian','Hubballi door no 564','drug case','released'),
(1009,'Shankar','Hegde','katte','2003-01-21','male','indian','Raichur door no 519','theft','jailed'),
(1010,'Chandan','Kulkarni','rajja','2003-07-21','female','indian','Vijayapura door no 614','fraud','released'),
(1011,'Mahesh','Gowda','kalla','2003-02-17','male','indian','Hubballi door no 665','fraud','wanted'),
(1012,'Shankar','Hegde','benki','2003-09-12','female','indian','Belagavi door no 574','assault','jailed'),
(1013,'Mahesh','Patil','shenku','2003-06-27','male','indian','Belagavi door no 007','bribery','wanted'),
(1014,'Manjunath','Naidu','gunda','2003-07-29','female','indian','Bagalkot door no 788','cyber crime','released'),
(1015,'Suresh','Shetty','katte','2003-05-01','male','indian','Dharwad door no 832','murder','jailed'),
(1016,'Ramesh','Joshi','macha','2003-06-09','female','indian','Mysuru door no 423','drug case','wanted'),
(1017,'Vinay','Reddy','rajja','2003-10-23','male','indian','Mandya door no 296','smuggling','jailed'),
(1018,'Chandan','Desai','doddi','2003-11-18','female','indian','Hubballi door no 339','kidnap','released'),
(1019,'Raghav','Gowda','suri','2003-03-15','male','indian','Ballari door no 128','cyber crime','wanted');

select * from criminals;
desc cases
alter table cases modify column casestatus enum('open','closed','under_investigation');
insert into cases values(2001,'murder case','murder',2003,'ballary','srikanth','open','snif',1,'strong_motive',1000);
insert into cases values(2002,'robbary_case','theft',2003,'challakere','rangu','open','gold',2,'on_road_plan',1001),
(2003,'smuggling_case','other',2003,'davanagere','sudeep','closed','drugs',3,'illegal_night_time',1002),
(2004,'murder_case','murder',2004,'ballari','arjun','open','knife',4,'family_dispute',1003),
(2005,'rape_case','other',2005,'shivamogga','naveen','closed','dna',5,'remote_area',1004),
(2006,'fraud_case','other',2006,'mangaluru','kavitha','open','documents',6,'fake_signature',1005),
(2007,'human_trafficking_case','other',2007,'tumakuru','manjunath','closed','humans',7,'border_crossing',1006),
(2008,'acid_attack_case','other',2008,'udupi','rekha','open','acid',8,'street_argument',1007),
(2009,'cyber_crime_case','cybercrime',2009,'bengaluru','vignesh','closed','bank_data',9,'phishing_email',1008),
(2010,'chain_snatching_case','theft',2010,'mysuru','anusha','open','gold_chain',10,'busy_market',1009),
(2011,'kidnapping_case','other',2011,'dharwad','ramesh','closed','child',11,'school_gate',1010),
(2012,'domestic_violence_case','other',2012,'raichur','geetha','open','injuries',12,'home_fight',1011),
(2013,'illegal_mining_case','other',2013,'bellary','suresh','closed','iron_ore',13,'forest_area',1012),
(2014,'drug_smuggling_case','other',2014,'karwar','mehul','open','cocaine',14,'coastal_route',1013),
(2015,'mobile_theft_case','theft',2015,'bagalkote','sahana','closed','mobiles',15,'bus_stand',1014),
(2016,'fake_currency_case','other',2016,'hubballi','vinay','open','fake_notes',16,'atm_deposit',1015),
(2017,'atm_theft_case','theft',2017,'hassan','shruthi','closed','cash',17,'night_blown',1016),
(2018,'passport_forgery_case','other',2018,'chitradurga','amar','open','passports',18,'airport_check',1017),
(2019,'loan_scam_case','other',2019,'mandya','deepika','closed','loan_docs',19,'bank_fraud',1018),
(2020,'online_job_fraud_case','cybercrime',2020,'bengaluru','lakshman','open','fake_offer',20,'email_scam',1019);

desc officers;
insert into officers values(3001,'vikram','rathod','116','sub inspector','police','challakere station',886644558,'rathod@gmail.com','murder_investigation',1000,2001);
insert into officers values(3002,'pruthvi','kanth','118','CBI','CBI','challakere underworld',7788445511,'pruthvi@gmail.com','special_inve',1001,2002),
(3003,'chiru','mp',110,'police','police','challakere',8844551166,'chiru@gmail.com','police invest',1002,2003),
(3004,'rahul','dev','119','NIA','NIA','bangalore',9988776655,'rahul@gmail.com','anti_terror',1003,2004),
(3005,'sneha','rao','120','CBI','CBI','mysore',8877665544,'sneha@gmail.com','cyber_crime',1004,2005),
(3006,'arjun','reddy','121','RAW','RAW','delhi',7766554433,'arjun@gmail.com','intel_ops',1005,2006),
(3007,'meera','das','122','police','police','hubli',6655443322,'meera@gmail.com','criminal_invest',1006,2007),
(3008,'naveen','kumar','123','CID','CID','hassan',5544332211,'naveen@gmail.com','fraud_detect',1007,2008),
(3009,'divya','singh','124','CBI','CBI','belgaum',4433221100,'divya@gmail.com','special_ops',1008,2009),
(3010,'vivek','joshi','125','NIA','NIA','mangalore',3322110099,'vivek@gmail.com','intelli_analysis',1009,2010),
(3011,'ananya','patil','126','RAW','RAW','udupi',2211009988,'ananya@gmail.com','intel_support',1010,2011),
(3012,'karthik','shetty','127','police','police','shivamogga',1100998877,'karthik@gmail.com','crime_scene',1011,2012),
(3013,'rhea','verma','128','CID','CID','tumkur',9998887776,'rhea@gmail.com','financial_crime',1012,2013),
(3014,'ravi','goud','129','CBI','CBI','davanagere',8887776665,'ravi@gmail.com','special_invest',1013,2014),
(3015,'nikhil','naik','130','NIA','NIA','bellary',7776665554,'nikhil@gmail.com','terror_watch',1014,2015),
(3016,'swathi','gowda','131','RAW','RAW','raichur',6665554443,'swathi@gmail.com','intel_report',1015,2016),
(3017,'manoj','b','132','police','police','kolar',5554443332,'manoj@gmail.com','traffic_invest',1016,2017),
(3018,'shilpa','s','133','CID','CID','chitradurga',4443332221,'shilpa@gmail.com','fraud_track',1017,2018),
(3019,'ajay','raj','134','CBI','CBI','bidar',3332221110,'ajay@gmail.com','special_ops',1018,2019),
(3020,'pallavi','desai','135','NIA','NIA','gulbarga',2221110009,'pallavi@gmail.com','counter_ops',1019,2020);

select * from officers;

desc evidence;

insert into evidence values(4001,2001,'cloths','we_found_blooded_cloths_near_dead_body','vikram_rathod','2003-03-03','challakere_cold_store','still_in_jail','still_searcing','available',1000,3001);
insert into evidence values(4002,2002,'knife','blooded_knife_found_in_dustbin','PruthviKanth','2004-04-14','challakere_police_station','secured','pending','available',1001,3002),
(4003,2003,'glove','glove_with_fingerprint_found','Chiru_Mp','2005-05-15','bellary_house','secured','sent_to_lab','available',1002,3003),
(4004,2004,'wallet','wallet_belonging_to_suspect','RahulDev','2006-06-16','mysore_bus_stop','secured','investigating','available',1003,3004),
(4005,2005,'gun','licensed_gun_matched_to_bullet','SnehaRao','2007-07-17','bangalore_apartment','secured','forensic_done','available',1004,3005),
(4006,2006,'note','threatening_note_found','ArjunReddy','2008-08-18','davanagere_school','submitted','analyzing','available',1005,3006),
(4007,2007,'watch','victim_watch_found_with_suspect','MeeraDas','2009-09-19','bijapur_hotel','in_evidence_box','processing','available',1006,3007),
(4008,2008,'drug_packet','cocaine_found_in_suspect_pocket','NaveenKumar','2010-10-20','udupi_room','sealed','positive_test','available',1007,3008),
(4009,2009,'bullet_shell','shell_casing_near_crime_scene','DivyaSingh','2011-11-21','mandya_street','submitted','matching_test','available',1008,3009),
(4010,2010,'photo','photo_with_suspect_and_victim','VivekJoshi','2012-12-22','mangalore_mall','archived','confirmed','available',1009,3010),
(4011,2011,'ring','victim_ring_found_at_scene','AnanyaPatil','2013-01-23','shivamogga_garden','stored','not_tested','available',1010,3011),
(4012,2012,'hair_strand','hair_collected_from_scene','KarthikShetty','2014-02-24','tumkur_house','evidence_bag','under_examination','available',1011,3012),
(4013,2013,'cctv_footage','shows_suspect_entering_scene','RheaVerma','2015-03-25','hubli_bank','locked_storage','clear_video','available',1012,3013),
(4014,2014,'shoe_print','matched_with_suspect_shoes','RaviGoud','2016-04-26','belgaum_ground','bagged','confirmed','available',1013,3014),
(4015,2015,'invoice','weapon_purchase_invoice_found','NikhilNaik','2017-05-27','raichur_shop','stapled_file','authentic','available',1014,3015),
(4016,2016,'rope','rope_used_in_crime','SwathiGowda','2018-06-28','bidar_farm','tied_tagged','partial_fibers_matched','available',1015,3016),
(4017,2017,'blood_sample','sample_matches_suspect','ManojB','2019-07-29','gulbarga_hospital','deep_freeze','dna_positive','available',1016,3017),
(4018,2018,'passport','fake_passport_with_wrong_name','ShilpaS','2020-08-30','bangalore_airport','evidence_drawer','fake_document','available',1017,3018),
(4019,2019,'sim_card','used_in_threat_calls','AjayRaj','2021-09-01','bellary_telecom','secure_bag','call_log_confirmed','available',1018,3019),
(4020,2020,'handbag','victim_handbag_found','KavyaM','2022-10-02','hassan_bridge','cleaned_and_tagged','no_fingerprint','available',1019,3020);

select * from evidence;

desc courtrecords;

insert into courtrecords values(5001,2001,'sri_kanth','mali_kanth','karna_kanth','2003-06-06','not_guilty','10_years_jail','challakere','discussing',1000,3001,4001);
insert into courtrecords values(5002,2002,'pruthvi_kanth','ravi_teja','kumar_nayak','2004-07-07','guilty','8_years_jail','bellary','closed',1001,3002,4002),
(5003,2003,'chiru_mp','manju_patil','deepak_gowda','2005-08-08','not_guilty','released','mysore','in_appeal',1002,3003,4003),
(5004,2004,'rahul_k','naveen_das','santosh_k','2006-09-09','guilty','6_years_jail','bangalore','review',1003,3004,4004),
(5005,2005,'sneha_s','anita_rao','megha_b','2007-10-10','guilty','12_years_jail','davanagere','closed',1004,3005,4005),
(5006,2006,'arjun_v','kiran_r','rahul_g','2008-11-11','not_guilty','released','bijapur','pending',1005,3006,4006),
(5007,2007,'meera_p','deepa_s','shreya_r','2009-12-12','guilty','10_years_jail','udupi','in_appeal',1006,3007,4007),
(5008,2008,'naveen_k','prashanth_m','dinesh_v','2010-01-13','guilty','7_years_jail','mandya','closed',1007,3008,4008),
(5009,2009,'divya_l','rekha_d','radhika_p','2011-02-14','not_guilty','released','mangalore','review',1008,3009,4009),
(5010,2010,'vivek_n','mahesh_k','avinash_s','2012-03-15','guilty','9_years_jail','shivamogga','closed',1009,3010,4010),
(5011,2011,'ananya_g','priya_r','kavya_m','2013-04-16','guilty','5_years_jail','tumkur','in_appeal',1010,3011,4011),
(5012,2012,'karthik_s','ramesh_n','nikhil_d','2014-05-17','guilty','11_years_jail','hubli','closed',1011,3012,4012),
(5013,2013,'rhea_v','neha_p','tina_m','2015-06-18','not_guilty','released','belgaum','closed',1012,3013,4013),
(5014,2014,'ravi_g','vishal_r','yogesh_s','2016-07-19','guilty','13_years_jail','raichur','in_appeal',1013,3014,4014),
(5015,2015,'nikhil_n','amit_k','ramesh_y','2017-08-20','guilty','4_years_jail','bidar','pending',1014,3015,4015),
(5016,2016,'swathi_g','rekha_g','sahana_g','2018-09-21','guilty','life_imprisonment','gulbarga','closed',1015,3016,4016),
(5017,2017,'manoj_b','kishor_b','suresh_b','2019-10-22','not_guilty','released','bangalore','review',1016,3017,4017),
(5018,2018,'shilpa_s','reshma_s','tanya_s','2020-11-23','guilty','3_years_jail','bellary','closed',1017,3018,4018),
(5019,2019,'ajay_raj','manoj_raj','arun_raj','2021-12-24','guilty','2_years_jail','hassan','judgement_given',1018,3019,4019),
(5020,2020,'kavya_m','sindhu_m','deepa_m','2022-01-25','not_guilty','released','challakere','closed',1019,3020,4020);

select * from courtrecords;
select * from criminals;
select * from evidence;
select * from officers;
select * from cases;

alter table courtrecords rename column court_loc to court_location;
alter table evidence rename column evi_desc to evidence_description;
alter table officers rename column assignedcases to assigned_cases;
alter table criminals rename column crimehistory to crime_history;

select first_name from criminals where cri_id>1000 and current_status='jailed';
select * from criminals where last_name='nayak' or last_name='reddy';
select * from officers where rank_name in('CBI','NIA');
select * from officers where officer_id not in(3004,3006,3007,3008);
select * from officers where badge_no between 116 and 129;
select * from cases where crime_date not between 2004 and 2006;
select * from evidence where storage_loc like 'c%';
select count(*) from courtrecords group by sentence;
select max(case_id) from courtrecords group by record_id;
select min(suspect_id) from cases group by crime_date;
select sum(suspect_id) from cases;
select avg(suspect_id)  as avg_of_sus from cases;
select count(cri_id) as cri_id_count,gender from criminals  group by gender having gender='male';
