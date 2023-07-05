drop database BooksDB;
create database BooksDB;
use BooksDB;
create table Books(
 s_no int  primary key,
 Book_title varchar(50),
 Author varchar(50),
 genre varchar(50),
 publication_year int,
 price int);
  INSERT INTO Books VALUES(1, "ANIMATED CARTOONS", "E.G.LUTZ", "DRAWING", 2008, 299);
  INSERT INTO Books VALUES(2, "FINGER DRAWING", "ANDREW LOOMIS", "DRAWING", 2012, 399);
  INSERT INTO Books VALUES(3, "THE SECRET", "RHONDA BYRNE", "PSYCHOLOGY", 2008, 500);
  INSERT INTO Books VALUES(4, "INNER ENGINEERING", "SADHGURU", "PSYCHOLOGY", 2016, 450);
  INSERT INTO Books VALUES(5, "THE MOTIVATION MYTH", "JEFF HADEN", "MOTIVATION", 2018, 250);
  
-- a.retrieve all books from the database --
 select * from Books;
 -- b.retrieve details of a book based on title --
SELECT * FROM Books
WHERE Book_title = 'THE SECRET'; 

-- c.update the price of a book --
UPDATE Books SET price = "1000" WHERE price=500;

-- d.delete a book based on title --
DELETE from Books
WHERE Book_title = "INNER ENGINEERING";

select * from Books;

select avg(price) from books;

create table authors(se_no int primary key,
author_age int,
author_native varchar(50),
author_name varchar(60),
s_no int,
constraint fk_s_no foreign key(s_no) references Books(s_no));


insert into authors values(1,22,"Dubai","William",5);
insert into authors values(2,27,"Britain","Hitler",2);
insert into authors values(3,20,"Moscow","Walter Disney",1);
insert into authors values(4,50,"America","Wright Brothers",3);
 

SELECT * FROM authors INNER JOIN Books ON authors.se_no=Books.s_no ORDER BY author_age;