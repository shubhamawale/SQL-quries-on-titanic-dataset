# First create data base also called as schema
create database titanic;
create schema titanic;

--------------------------------------------------------------------------------------------------
# droping or removing database
drop database titanic;
drop schema titanic;

--------------------------------------------------------------------------------------------------
# out of all database make it use whatever we want to use  and that will be default
use titanic;

--------------------------------------------------------------------------------------------------
# creating table (method 1)
create table traveler(
					  PassengerId int,
                      Survived int,
                      Pclass int,
                      Name varchar(100),
                      Sex varchar(6),
                      Age int,
                      SibSp int,
                      Parch int,
                      Ticket varchar(30),
                      Fare float,
                      Cabin varchar(20),
                      Embarked varchar(1)
);                      

# creating table (method 2)
# right click on tables and click create table and fill columns (eg- traveler_II)

--------------------------------------------------------------------------------------------------
# checking table
select * from traveler;
select * from traveler_II;

--------------------------------------------------------------------------------------------------
# loading data single single row
INSERT INTO traveler (Passenger_ID, Servived, Pclass,...)
VALUES (12, 0, 3, ...);



# loading data method 2
# right click on table and use import table wizard



# method 3  base (when data is large)
show global variables like 'local_infile';       # if off turn on
set global local_infile ='ON'; # way 1 to on
set global local_infile=1;     # way 2 to on 

# mehod 3.1        (store the file in secure file path location) (change all \ to /)       # fast
SHOW VARIABLES LIKE "secure_file_priv";

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/train.csv'
INTO TABLE traveler_ii
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

# mehod 3.2 when directory is anywhere but not working
LOAD DATA LOCAL INFILE 'C:/Users/CeX/Desktop/Data science/SQL/Titanic - SQL/train.csv'
INTO TABLE traveler_iii
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;



--------------------------------------------------------------------------------------------------

# direct method loading data with creating table
# right click on tables and (1) click table data import wizrd
                               # slow
select * from traveler_III; 

--------------------------------------------------------------------------------------------------