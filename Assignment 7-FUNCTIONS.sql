use populations;
select * from Country;
select * from Person;

#1.Adding a new column called DOB in Persons table with data type as Date. 
alter table Person add column DOB Date;

#2.Inserting values for the field DOB in the table Person.
update Person set DOB='1990-12-31' where Fname='John' and Lname ='Joseph';
update Person set DOB='1991-12-01' where Fname='Mathew' and Lname ='Joseph';
update Person set DOB='1992-02-11' where Fname='Varghese' and Lname ='Peter';
update Person set DOB='1993-04-30' where Fname='Paul' and Lname ='Thomas';
update Person set DOB='1994-10-31' where Fname='John' and Lname ='Paul';
update Person set DOB='1995-11-30' where Fname='Peter' and Lname ='Jo';
update Person set DOB='1989-12-03' where Fname='John' and Lname ='Jose';
update Person set DOB='1988-06-07' where Fname='Antony' and Lname ='Thomas';
update Person set DOB='1987-07-31' where Fname='John' and Lname ='Bastin';
update Person set DOB='1988-08-25' where Fname='Mathew' and Lname ='Paul';
update Person set DOB='1990-12-31' where Fname='John' and Lname is null;
update Person set DOB='1991-03-29' where Fname='Paul'and Lname is null;

#3.User-defined function to calculate age using DOB.

DELIMITER //
CREATE FUNCTION AGE(DOB Date)
RETURNS int
DETERMINISTIC
BEGIN
RETURN floor(DATEDIFF(CURDATE(),DOB)/365);
END //
DELIMITER ;

#4.Query to fetch the Age of all persons using the function that has been created.
select Fname,AGE(DOB) as Present_Age from Person;

#5. Find the length of each country name in the Country table.
select Country_name,length(Country_name) as name_length from Country;

#6.Extract the first three characters of each country's name in the Country table. 
select Country_name,substr(Country_name,1,3) as First_Three_Character from Country;

#7.Convert all country names to uppercase and lowercase in the Country table.
select UCASE(Country_name) as IN_Uppercase,LCASE(Country_name) as IN_Lowercase from Country;
