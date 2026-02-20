use school ;

select  Name from  titanic  where Age = (select max(Age)  from titanic ) ;

select  Name, Age from  titanic  where Age = (select max(Age)  from titanic ) ;

select * from titanic order by age desc;

select avg(age) from titanic ;

select name, age from titanic where age >= (select avg(age) from titanic ) ;

select  * from titanic where age between 28.22 and  30 order by age ;

-- ofset

select * from titanic limit 5 offset 2 ;
select * from titanic order by PassengerId desc ;

select * from titanic order by  PassengerId desc limit 22 offset 2  ;

select length(age) from titanic ;

select count(age) from titanic ;




