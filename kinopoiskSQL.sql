CREATE TABLE film
(
	film_id int PRIMARY KEY,
	title text NOT NULL,
	release_date date NOT NULL 
);

CREATE TABLE person
(
	person_id int PRIMARY KEY,
	proffession varchar(32), 
	fullname varchar(64) NOT NULL,
	film_id int REFERENCES film(film_id)
);

CREATE TABLE genre
(
	genre_id int PRIMARY KEY,
	name varchar(32) NOT NULL,
	film_id int REFERENCES film(film_id) 
);

CREATE TABLE viewer
(
	viewer_id int PRIMARY KEY,
	country varchar(32) NOT NULL,
	viewer_number real,
	film_id int REFERENCES film(film_id) 
);

CREATE TABLE film_person
(
	film_id int,
	person_id int,
	PRIMARY KEY (film_id, person_id),
	FOREIGN KEY (film_id) REFERENCES film(film_id),
	FOREIGN KEY (person_id) REFERENCES person(person_id)
)
