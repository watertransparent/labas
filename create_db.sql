CREATE USER waterflower WITH PASSWORD 'water_flower';
CREATE DATABASE water_db WITH OWNER = waterflower ENCODING ='UTF8';
GRANT ALL PRIVILEGES ON DATABASE water_db to waterflower;
