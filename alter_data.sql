alter table usr add column phone varchar(20);
ALTER TABLE usr RENAME COLUMN email TO e_mail;
alter table usr add constraint e_mail_unique unique(e_mail);
update usr set phone='+7(978)123-45-63' where id=1;
update usr set phone='+7(978)123-45-64' where id=2;
update usr set phone='+7(978)123-45-65' where id=3;
update usr set phone='+7(978)123-45-66' where id=4;
update usr set phone='+7(978)123-45-67' where id=5;
update usr set phone='+7(978)123-45-68' where id=6;
update usr set phone='+7(978)123-45-69' where id=7;
update usr set phone='+7(978)123-45-70' where id=8;
update usr set phone='+7(978)123-45-71' where id=9;
update usr set phone='+7(978)123-45-72' where id=10;
update usr set phone='+7(978)123-45-33' where id=11;
update usr set phone='+7(978)123-45-34' where id=12;
update usr set phone='+7(978)123-45-35' where id=13;
update usr set phone='+7(978)123-45-12' where id=14;
update usr set phone='+7(978)123-45-32' where id=15;
update usr set phone='+7(978)123-45-41' where id=16;
update usr set phone='+7(978)123-45-67' where id=17;
update usr set phone='+7(978)123-45-67' where id=18;
update usr set phone='+7(978)123-12-67' where id=19;
update usr set phone='+7(978)123-64-67' where id=20;
update usr set phone='+7(978)123-23-34' where id=21;
update usr set phone='+7(978)123-33-32' where id=22;
update usr set phone='+7(978)123-22-23' where id=23;
alter table usr add column birth_date timestamp;
update usr set birth_date='1999-06-22 18:12:08' where id=1;
update usr set birth_date='2004-08-23 02:23:08' where id=2;
update usr set birth_date='2007-10-22 03:56:08' where id=3;
update usr set birth_date='2008-11-10 15:23:08' where id=4;
update usr set birth_date='2002-12-11 15:25:08' where id=5;
update usr set birth_date='2003-06-23 15:25:08' where id=6;
update usr set birth_date='2002-07-26 10:25:08' where id=7;
update usr set birth_date='2003-08-15 12:25:08' where id=8;
update usr set birth_date='2007-09-04 04:25:08' where id=9;
update usr set birth_date='2008-06-06 09:25:08' where id=10;
update usr set birth_date='2006-03-03 01:23:08' where id=11;
update usr set birth_date='2005-02-23 00:15:08' where id=12;
update usr set birth_date='2004-01-29 19:05:08' where id=13;
update usr set birth_date='2003-03-08 22:24:08' where id=14;
update usr set birth_date='2002-02-12 12:55:08' where id=15;
update usr set birth_date='2001-06-19 13:45:08' where id=16;
update usr set birth_date='2000-07-18 20:25:08' where id=17;
update usr set birth_date='2009-08-20 14:32:08' where id=18;
update usr set birth_date='2003-05-20 15:35:08' where id=19;
update usr set birth_date='2007-12-04 10:11:08' where id=20;
update usr set birth_date='2007-11-04 21:18:08' where id=21;
update usr set birth_date='2008-04-01 22:07:08' where id=22;
update usr set birth_date='2008-05-02 23:04:08' where id=23;
alter table usr ALTER COLUMN birth_date SET NOT NULL;
create table role (
name varchar(20) not null,
primary key (name)
);
insert into role (name) values
('administrator'),
('editor'),
('user');
alter table usr add column role_name varchar(20);
update usr set role_name='administrator' where id=1;
update usr set role_name='administrator' where id=2;
update usr set role_name='editor' where id=3;
update usr set role_name='editor' where id=4;
update usr set role_name='editor' where id=5;
update usr set role_name='editor' where id=6;
update usr set role_name='editor' where id=7;
update usr set role_name='editor' where id=8;
update usr set role_name='editor' where id=9;
update usr set role_name='user' where id=10;
update usr set role_name='user' where id=11;
update usr set role_name='user' where id=12;
update usr set role_name='user' where id=13;
update usr set role_name='user' where id=14;
update usr set role_name='user' where id=15;
update usr set role_name='user' where id=16;
update usr set role_name='user' where id=17;
update usr set role_name='user' where id=18;
update usr set role_name='user' where id=19;
update usr set role_name='user' where id=20;
update usr set role_name='user' where id=21;
update usr set role_name='user' where id=22;
update usr set role_name='user' where id=23;
alter table usr alter column role_name set not NULL;
alter table usr add column login varchar(64);
alter table usr add column password varchar(64);
alter table usr add constraint FK_USR_ROLE foreign key (role_name) references
role;
create table permission (
id SMALLSERIAL not null,
primary key (id),
name VARCHAR(30) not null);
insert into permission (name) values
('create'),
('edit'),
('view'),
('delete');
create table role_permission (
role_name VARCHAR(20) not null,
permission_id SMALLSERIAL not null
);
alter table role_permission add constraint FK_USR_ROLE foreign key (permission_id) references
permission;
alter table role_permission add constraint FK_USR_ROLE2 foreign key (role_name) references
role;
insert into role_permission (role_name, permission_id) values
('administrator','1'),
('administrator','2'),
('administrator','3'),
('administrator','4'),
('editor','2'),
('editor','3'),
('user','3');