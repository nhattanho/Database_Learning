CREATE TABLE Movie (
    id int PRIMARY KEY,
    title varchar(100),
    year int,
    rating varchar(10),
    company varchar(50)
);

CREATE TABLE Actor (
    id int PRIMARY KEY,
    last varchar(20),
    first varchar(20),
    sex varchar(6),
	  dob date,
    dod date 
);

CREATE TABLE MovieGenre (
    mid int,
	  genre varchar(20)
);

CREATE TABLE MovieActor (
    mid int,
    aid int,
    role varchar(50) 
);

CREATE TABLE Review (
    name varchar(20),
    time datetime,
    mid int,
	  rating int,
    comment text 
);

LOAD DATA LOCAL INFILE './movie.del' INTO TABLE Movie;
LOAD DATA LOCAL INFILE './actor1.del' INTO TABLE Actor;
LOAD DATA LOCAL INFILE './actor2.del' INTO TABLE Actor;
LOAD DATA LOCAL INFILE './actor3.del' INTO TABLE Actor;
LOAD DATA LOCAL INFILE './moviegenre.del' INTO TABLE MovieGenre;
LOAD DATA LOCAL INFILE './movieactor1.del' INTO TABLE MovieActor;
LOAD DATA LOCAL INFILE './movieactor2.del' INTO TABLE MovieActor;
