select * from usr where id>6 order by id asc;
select first_name, last_name from usr where Length(first_name) > 7;
select * from usr  WHERE birth_date >= TO_TIMESTAMP( '2005-01-01', 'yyyy-mm-dd' );
select first_name, last_name, birth_date from usr order by birth_date desc;
select * from usr  WHERE birth_date >= TO_TIMESTAMP( '2003-01-01', 'yyyy-mm-dd' )
    AND birth_date < TO_TIMESTAMP( '2009-01-01', 'yyyy-mm-dd');

select m.first_name, m.middle_name, m.last_name, m.e_mail, d.name
from university_member um join usr m on um.user_id=m.id
join department d on um.department_id=d.id;
select m.first_name, m.middle_name, m.last_name, m.e_mail, g.name
from group_member gm join university_member um on gm.university_member_id=um.user_id
join groups g on gm.group_id=g.id join usr m on um.user_id=m.id;
select u.first_name, u.middle_name, u.last_name, a.zip_code, a.city, a.street, a.building,
 a.flat from usr u inner join address a on u.id=a.user_id;
select u.first_name, u.middle_name, u.last_name, a.zip_code, a.city, a.street, a.building,
 a.flat from usr u left join address a on u.id=a.user_id;
 create view dep AS
select m.first_name, m.middle_name, m.last_name, m.e_mail, d.name
from university_member um join usr m on um.user_id=m.id join department d on um.department_id=d.id;
create view grop AS
select m.first_name, m.middle_name, m.last_name, m.e_mail, g.name
from group_member gm join university_member um on gm.university_member_id=um.user_id
join groups g on gm.group_id=g.id join usr m on um.user_id=m.id; 
create view pos_usr AS
select m.first_name, m.middle_name, m.last_name, m.e_mail, p.name
from university_member um left join usr m on um.user_id=m.id join position p on um.position_id=p.id; 