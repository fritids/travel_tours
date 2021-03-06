DROP TABLE USER;

CREATE TABLE user (
	email VARCHAR(255) NOT NULL PRIMARY KEY,
	password VARCHAR(255) NOT NULL,
	phone VARCHAR(25),
	firstname VARCHAR(25),
	lastname VARCHAR(25),
	spoken_language VARCHAR(15),
	is_admin INTEGER NOT NULL
)

DROP TABLE TRIP;

CREATE TABLE trip (
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	name varchar(50),
	duration varchar(10),
	description text,
	image varchar(255),
	lang varchar(20)
)

DROP TABLE BOOKING;

CREATE TABLE booking (
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	start_date datetime NOT NULL,
	end_date datime NOT NULL,
	meeting_point varchar(255),
	comment varchar(255),
	trip_id INTEGER ,
	CONSTRAINT fk_TripId FOREIGN KEY (trip_id) REFERENCES trip(id)
)