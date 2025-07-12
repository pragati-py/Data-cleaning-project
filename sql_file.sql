use omo;
select * from club_member_info;

create table club like club_member_info;

-- REMOVE DUPLICATES

select * from club;

alter table club
add row_num int;

insert into club
select *,
row_number() over (partition by full_name, age, martial_status, email, phone, full_address, job_title, membership_date)
as row_num from club_member_info;

delete from club
where row_num>1;

-- STANDARDIZE THE DATA
select full_name, trim(full_name) from club;

update club
set full_name=trim(full_name);

update club
set full_name = trim(leading '???' from full_name);

select membership_date,
STR_TO_DATE (membership_date,'%m/%d/%Y') 
from club;

update club
set membership_date= STR_TO_DATE (membership_date,'%m/%d/%Y') ;

alter table club
change membership_date M_DATE date; 

select * from club;

update club 
set phone=null
where phone='';

alter table club
drop column row_num;

-- Fixed the CamelCase issue of full_name with flashfill in excel.



