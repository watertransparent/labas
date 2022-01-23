create table usr (
	id bigserial not null,
	email varchar(64) not null,
	first_name varchar(64) not null,
	last_name varchar(64) not null,
	middle_name varchar(64) not null
);
create table role (
name varchar(20) not null,
primary key (name)
);
create table permission (
id SMALLSERIAL not null,
primary key (id),
name VARCHAR(30) not null);
create table role_permission (
role_name VARCHAR(20) not null,
permission_id SMALLSERIAL not null
);
create table department(
id INTEGER,
name VARCHAR(30) not null,
primary key (id)
);
create table university_member(
id integer,
user_id integer,
department_id integer,
position_id integer,
primary key (id)
);
create table group_member(
id integer,
university_member_id integer,
group_id integer,
group_leader char(1),
primary key (id)
);
create table groups(
id integer,
name varchar(30),
course integer,
primary key (id)
);
create table position(
id integer,
name varchar(30),
primary key (id)
);