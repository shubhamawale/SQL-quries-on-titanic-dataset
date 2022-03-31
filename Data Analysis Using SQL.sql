show databases;

use titanic;

show tables;

-----------------------------------------------------------------------------------------------------
# show all
select * from traveler;

-----------------------------------------------------------------------------------------------------
# No of passengers
select count(*) from traveler;

-----------------------------------------------------------------------------------------------------
# no of male and female on titanic
select sex, count(*) as 'no of passenger' from traveler
group by sex;

-----------------------------------------------------------------------------------------------------
# no of passenger survived in dead
select survived, count(*) as'passengers' from traveler
group by survived;

-----------------------------------------------------------------------------------------------------
#
select Pclass, count(*) as 'no of Passengers' from traveler
group by Pclass;

-----------------------------------------------------------------------------------------------------
# Embarked city and no of passengers
select embarked, count(*) as 'passengers' from traveler
group by embarked;

-----------------------------------------------------------------------------------------------------
# Average fare price
select avg(fare)  as 'Average Fare' from traveler;

-----------------------------------------------------------------------------------------------------
# Average age of passengers 
select avg(age) as 'Average Age' from traveler;

-----------------------------------------------------------------------------------------------------
# Minimun, Average and Maximum age of passengers
select min(age), avg(age), max(age) from traveler;

-----------------------------------------------------------------------------------------------------
 # passengers above 60 year old
 select * from traveler
 where  age >= 60;

-----------------------------------------------------------------------------------------------------
# unique embaked location and spouse
select distinct(embarked) from traveler;

-----------------------------------------------------------------------------------------------------
# passengers those embarked other than S
select name, age, embarked from traveler
where embarked <> 'S';

select name, age, embarked from traveler
where embarked != 'S';

select name, age, embarked from traveler
where not embarked = 'S';

-----------------------------------------------------------------------------------------------------
# people whose age is 24,25,26
select * from traveler
where age=24 or age=25 or age=26;

select count(*) from traveler
where age=24 or age=25 or age=26;

# Passenger whose age in range of 24 to 26
select * from traveler
where age in (24,25,26);

select count(*) from traveler
where age in (24,25,26);


-----------------------------------------------------------------------------------------------------
# fare between 20 to 30
select * from traveler
where fare between 20 and 30
order by fare desc;

-----------------------------------------------------------------------------------------------------
# passenger embarked from Q
select * from traveler
where embarked like 'Q'
order by name;

select * from traveler
where embarked='Q'
order by name;

-----------------------------------------------------------------------------------------------------
# passenger who embarkded from Q and Pclass 1
select * from traveler
where pclass=1 and embarked='Q';

-----------------------------------------------------------------------------------------------------
# order by desc pclass and asc name
select * from traveler
order by pclass desc, name asc;

-----------------------------------------------------------------------------------------------------
# show all where embarked location is blank (Null)
select count(*) from traveler
where cabin is null;

-----------------------------------------------------------------------------------------------------
# count all where cabin column have some value
select count(*) from traveler
where cabin is not null;