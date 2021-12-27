select * from usr where id>6 order by id asc;
select first_name, last_name from usr where Length(first_name) > 7;
select * from usr  WHERE birth_date >= TO_TIMESTAMP( '2005-01-01', 'yyyy-mm-dd' );
select first_name, last_name, birth_date from usr order by birth_date desc;
select * from usr  WHERE birth_date >= TO_TIMESTAMP( '2003-01-01', 'yyyy-mm-dd' )
    AND birth_date < TO_TIMESTAMP( '2009-01-01', 'yyyy-mm-dd');
