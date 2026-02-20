use school;

create table voter 
(
v_enr int primary key ,
v_name varchar(45),
v_age int
);

DELIMITER //
CREATE TRIGGER BE_INS BEFORE INSERT ON VOTER FOR EACH ROW 
BEGIN 
  IF NEW.V_AGE > 17 THEN SET NEW.V_CRITE = "ALLOW FOR VOTE" ;
  ELSE SET NEW.V_CRITE = "NOT ALOOWED" ;
  END IF;
  END //
  DELIMITER ;
  
  DELIMITER //
CREATE TRIGGER BE_INS BEFORE INSERT ON VOTER FOR EACH ROW 
BEGIN 
  IF NEW.V_AGE > 17 THEN SET NEW.V_CRITE = CONCAT(v_name, "ALLOW FOR VOTE" );
  ELSE SET NEW.V_CRITE = "NOT ALOOWED" ;
  END IF;
  END //
  DELIMITER ;
  
  create table voter2
(
v_enr int primary key ,
v_name varchar(45),
v_age int,
V_CONDI VARCHAR(34)
);
  
  
  DROP TRIGGER BE_INS ;
  
   DELIMITER //
CREATE TRIGGER AE_INS AFTER INSERT ON VOTER FOR EACH ROW 
BEGIN 
  IF NEW.V_AGE < 17 THEN
   INSERT INTO VOTER2 VALUES (NEW.v_enr, NEW.v_name, NEW.v_age ,V_AGE );
  END IF;
  END //
  DELIMITER ;
  
  TRUNCATE TABLE VOTER ;
  
   DELIMITER //
CREATE TRIGGER AE_INS2 AFTER INSERT ON VOTER FOR EACH ROW 
BEGIN 
  IF NEW.V_AGE < 17 THEN
   INSERT INTO VOTER2 VALUES (new.v_enr, new.v_name, new.v_age, new.V_CRITE );
  END IF;
  END //
  DELIMITER ;
  
  
  create table elec 
(
e_enr int primary key ,
e_name varchar(45),
e_age int
);

create table elec2
(
e_enr int primary key ,
e_name varchar(45),
e_age int
);

DELIMITER //
CREATE TRIGGER af_ins after insert on elec for each row
begin
if new.e_age < 17 then 
insert into elec2 values (new.e_enr, new.e_name, new.e_age) ;
end if ;
end //
DELIMITER  ;

delimiter $$
create trigger up_el before update on elec for each row
begin
 if new.e_age < 0 then signal sqlstate "45000"
 set message_text = "you are not eligible" ;
 end if ;
 end $$
 delimiter ;
 
 select user() ;
 
 
 CREATE TABLE dl2_el select * from dl_ele ;
 
 




  
  
  
  
  
  
  
  
  
  

  
  