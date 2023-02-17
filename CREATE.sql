CREATE TABLE Album(
	Album_id INTEGER PRIMARY KEY,
	Album_Name VARCHAR(60) not NULL,
	Date INTEGER
);

CREATE table Track(
	Track_id INTEGER PRIMARY KEY,
	Track_Name VARCHAR(60) NOT NULL,
	Duration TIME NOT NULL,
	Album_id INTEGER REFERENCES Album(Album_id)
);

CREATE TABLE Collection(
	Collection_id INTEGER PRIMARY KEY,
	Collection_Name VARCHAR(60),
	Release_year INTEGER
);

CREATE TABLE Track_Collection(
	Track_id INTEGER REFERENCES Track(Track_id),
	Collection_id INTEGER REFERENCES Collection(Collection_id),
	CONSTRAINT tc PRIMARY KEY (Track_id, Collection_id)
);

CREATE TABLE Executor(
	Executor_id INTEGER PRIMARY KEY,
	Executor_Name VARCHAR(60)
);

CREATE TABLE Executor_Album(
	Executor_id INTEGER REFERENCES Executor(Executor_id),
	Album_id INTEGER REFERENCES Album(Album_id),
	CONSTRAINT ea PRIMARY KEY (Executor_id, Album_id)
);

CREATE TABLE Genre(
	Genre_id INTEGER PRIMARY KEY,
	Genre_Name VARCHAR(60)
);

CREATE TABLE Genre_Executor(
	Genre_id INTEGER REFERENCES Genre(Genre_id),
	Executor_id INTEGER REFERENCES Executor(Executor_id),
	CONSTRAINT ge PRIMARY KEY (Genre_id, Executor_id)
);

