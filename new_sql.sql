DROP DATABASE IF EXISTS recordstore;
CREATE DATABASE recordstore;
USE recordstore;

CREATE TABLE song(
song_ID			INT NOT NULL auto_increment PRIMARY KEY,
song_name 		VARCHAR(30),
artist_name 	VARCHAR(30),
album_name 		VARCHAR(50),
release_date 	DATE,
rating 			VARCHAR(30)
);

-- Insert values into song table
INSERT INTO song (song_name, artist_name, album_name, release_date, rating)
VALUES
    ('Shape of You', 'Ed Sheeran', 'Divide', '2017-01-06', 'Clean'),
    ('Bohemian Rhapsody', 'Queen', 'A Night at the Opera', '1975-10-31', 'Clean'),
    ('Imagine', 'John Lennon', 'Imagine', '1971-09-09', 'Clean'),
    ('Hotel California', 'Eagles', 'Hotel California', '1976-12-08', 'Clean'),
    ('Blinding Lights', 'The Weeknd', 'After Hours', '2019-11-29', 'Clean'),
    ('Yesterday', 'The Beatles', 'Help!', '1965-08-13', 'Clean'),
    ('Billie Jean', 'Michael Jackson', 'Thriller', '1983-01-02', 'Clean'),
    ('Stairway to Heaven', 'Led Zeppelin', 'Led Zeppelin IV', '1971-11-08', 'Clean'),
    ('Rolling in the Deep', 'Adele', '21', '2010-11-29', 'Clean'),
    ('Purple Haze', 'Jimi Hendrix', 'Are You Experienced', '1967-03-17', 'Clean'),
    ('Sweet Child o'' Mine', 'Guns N'' Roses', 'Appetite for Destruction', '1987-07-21', 'Clean'),
    ('Smells Like Teen Spirit', 'Nirvana', 'Nevermind', '1991-09-10', 'Explicit'),
    ('Boogie Wonderland', 'Earth, Wind & Fire', 'I Am', '1979-03-20', 'Clean'),
    ('Every Breath You Take', 'The Police', 'Synchronicity', '1983-05-20', 'Clean'),
    ('All of Me', 'John Legend', 'Love in the Future', '2013-08-12', 'Clean'),
    ('Black Dog', 'Led Zeppelin', 'Led Zeppelin IV', '1971-11-08', 'Clean'),
    ('Hotel California', 'Eagles', 'Hotel California', '1976-12-08', 'Clean'),
    ('Someone Like You', 'Adele', '21', '2010-11-29', 'Clean'),
    ('Wonderwall', 'Oasis', '(What''s the Story) Morning Glory?', '1995-10-30', 'Clean'),
    ('Yesterday', 'The Beatles', 'Help!', '1965-08-13', 'Clean'),
    ('Radioactive', 'Imagine Dragons', 'Night Visions', '2012-09-04', 'Clean'),
    ('Let It Be', 'The Beatles', 'Let It Be', '1970-03-06', 'Clean'),
    ('Bohemian Rhapsody', 'Queen', 'A Night at the Opera', '1975-10-31', 'Clean'),
    ('Rolling in the Deep', 'Adele', '21', '2010-11-29', 'Clean'),
    ('Sweet Child o'' Mine', 'Guns N'' Roses', 'Appetite for Destruction', '1987-07-21', 'Clean'),
    ('All You Need Is Love', 'The Beatles', 'Magical Mystery Tour', '1967-12-08', 'Clean'),
    ('Billie Jean', 'Michael Jackson', 'Thriller', '1983-01-02', 'Clean'),
    ('Smells Like Teen Spirit', 'Nirvana', 'Nevermind', '1991-09-10', 'Explicit'),
    ('Wonderwall', 'Oasis', '(What''s the Story) Morning Glory?', '1995-10-30', 'Clean'),
    ('Boogie Wonderland', 'Earth, Wind & Fire', 'I Am', '1979-03-20', 'Clean'),
    ('Black Dog', 'Led Zeppelin', 'Led Zeppelin IV', '1971-11-08', 'Clean'),
    ('Every Breath You Take', 'The Police', 'Synchronicity', '1983-05-20', 'Clean'),
    ('Purple Haze', 'Jimi Hendrix', 'Are You Experienced', '1967-03-17', 'Clean'),
    ('Hotel California', 'Eagles', 'Hotel California', '1976-12-08', 'Clean'),
    ('Someone Like You', 'Adele', '21', '2010-11-29', 'Clean'),
    ('Radioactive', 'Imagine Dragons', 'Night Visions', '2012-09-04', 'Clean'),
    ('Let It Be', 'The Beatles', 'Let It Be', '1970-03-06', 'Clean'),
    ('All You Need Is Love', 'The Beatles', 'Magical Mystery Tour', '1967-12-08', 'Clean'),
    ('Seven Nation Army', 'The White Stripes', 'Elephant', '2003-03-07', 'Clean'),
    ('Dancing Queen', 'ABBA', 'Arrival', '1976-08-16', 'Clean'),
    ('Wish You Were Here', 'Pink Floyd', 'Wish You Were Here', '1975-09-12', 'Clean'),
    ('The Sound of Silence', 'Simon & Garfunkel', 'Parsley, Sage, Rosemary and Thyme', '1966-01-17', 'Clean'),
    ('Sweet Child o'' Mine', 'Guns N'' Roses', 'Appetite for Destruction', '1987-07-21', 'Clean'),
    ('Smells Like Teen Spirit', 'Nirvana', 'Nevermind', '1991-09-10', 'Explicit'),
    ('Black Dog', 'Led Zeppelin', 'Led Zeppelin IV', '1971-11-08', 'Clean'),
    ('Purple Haze', 'Jimi Hendrix', 'Are You Experienced', '1967-03-17', 'Clean'),
    ('Boogie Wonderland', 'Earth, Wind & Fire', 'I Am', '1979-03-20', 'Clean'),
    ('Every Breath You Take', 'The Police', 'Synchronicity', '1983-05-20', 'Clean'),
    ('Hotel California', 'Eagles', 'Hotel California', '1976-12-08', 'Clean'),
    ('Yesterday', 'The Beatles', 'Help!', '1965-08-13', 'Clean'),
    ('Billie Jean', 'Michael Jackson', 'Thriller', '1983-01-02', 'Clean'),
    ('All of Me', 'John Legend', 'Love in the Future', '2013-08-12', 'Clean'),
    ('Wonderwall', 'Oasis', '(What''s the Story) Morning Glory?', '1995-10-30', 'Clean'),
    ('Someone Like You', 'Adele', '21', '2010-11-29', 'Clean'),
    ('Rolling in the Deep', 'Adele', '21', '2010-11-29', 'Clean'),
    ('Bohemian Rhapsody', 'Queen', 'A Night at the Opera', '1975-10-31', 'Clean'),
    ('Let It Be', 'The Beatles', 'Let It Be', '1970-03-06', 'Clean'),
    ('Radioactive', 'Imagine Dragons', 'Night Visions', '2012-09-04', 'Clean'),
    ('All You Need Is Love', 'The Beatles', 'Magical Mystery Tour', '1967-12-08', 'Clean'),
    ('Seven Nation Army', 'The White Stripes', 'Elephant', '2003-03-07', 'Clean'),
    ('Dancing Queen', 'ABBA', 'Arrival', '1976-08-16', 'Clean'),
    ('Wish You Were Here', 'Pink Floyd', 'Wish You Were Here', '1975-09-12', 'Clean'),
    ('The Sound of Silence', 'Simon & Garfunkel', 'Parsley, Sage, Rosemary and Thyme', '1966-01-17', 'Clean'),
    ('Sweet Child o'' Mine', 'Guns N'' Roses', 'Appetite for Destruction', '1987-07-21', 'Clean'),
    ('Black Dog', 'Led Zeppelin', 'Led Zeppelin IV', '1971-11-08', 'Clean'),
    ('Hotel California', 'Eagles', 'Hotel California', '1976-12-08', 'Clean'),
    ('Imagine', 'John Lennon', 'Imagine', '1971-09-09', 'Clean'),
    ('Stairway to Heaven', 'Led Zeppelin', 'Led Zeppelin IV', '1971-11-08', 'Clean'),
    ('Wonderwall', 'Oasis', '(What''s the Story) Morning Glory?', '1995-10-30', 'Clean'),
    ('Purple Haze', 'Jimi Hendrix', 'Are You Experienced', '1967-03-17', 'Clean'),
    ('Smells Like Teen Spirit', 'Nirvana', 'Nevermind', '1991-09-10', 'Explicit'),
    ('Boogie Wonderland', 'Earth, Wind & Fire', 'I Am', '1979-03-20', 'Clean'),
    ('Every Breath You Take', 'The Police', 'Synchronicity', '1983-05-20', 'Clean'),
    ('Rolling in the Deep', 'Adele', '21', '2010-11-29', 'Clean'),
    ('Black Dog', 'Led Zeppelin', 'Led Zeppelin IV', '1971-11-08', 'Clean'),
    ('Hotel California', 'Eagles', 'Hotel California', '1976-12-08', 'Clean'),
    ('Someone Like You', 'Adele', '21', '2010-11-29', 'Clean'),
    ('Radioactive', 'Imagine Dragons', 'Night Visions', '2012-09-04', 'Clean'),
    ('Let It Be', 'The Beatles', 'Let It Be', '1970-03-06', 'Clean'),
    ('Bohemian Rhapsody', 'Queen', 'A Night at the Opera', '1975-10-31', 'Clean'),
    ('Wonderwall', 'Oasis', '(What''s the Story) Morning Glory?', '1995-10-30', 'Clean'),
    ('Yesterday', 'The Beatles', 'Help!', '1965-08-13', 'Clean'),
    ('All You Need Is Love', 'The Beatles', 'Magical Mystery Tour', '1967-12-08', 'Clean'),
    ('Billie Jean', 'Michael Jackson', 'Thriller', '1983-01-02', 'Clean'),
    ('Sweet Child o'' Mine', 'Guns N'' Roses', 'Appetite for Destruction', '1987-07-21', 'Clean'),
    ('Someone Like You', 'Adele', '21', '2010-11-29', 'Clean'),
    ('Radioactive', 'Imagine Dragons', 'Night Visions', '2012-09-04', 'Clean'),
    ('All of Me', 'John Legend', 'Love in the Future', '2013-08-12', 'Clean'),
    ('Rolling in the Deep', 'Adele', '21', '2010-11-29', 'Clean'),
    ('Purple Haze', 'Jimi Hendrix', 'Are You Experienced', '1967-03-17', 'Clean'),
    ('Black Dog', 'Led Zeppelin', 'Led Zeppelin IV', '1971-11-08', 'Clean'),
    ('Stairway to Heaven', 'Led Zeppelin', 'Led Zeppelin IV', '1971-11-08', 'Clean'),
    ('Boogie Wonderland', 'Earth, Wind & Fire', 'I Am', '1979-03-20', 'Clean'),
    ('Imagine', 'John Lennon', 'Imagine', '1971-09-09', 'Clean'),
    ('Sweet Child o'' Mine', 'Guns N'' Roses', 'Appetite for Destruction', '1987-07-21', 'Clean'),
    ('Hotel California', 'Eagles', 'Hotel California', '1976-12-08', 'Clean'),
    ('Bohemian Rhapsody', 'Queen', 'A Night at the Opera', '1975-10-31', 'Clean'),
    ('Dancing Queen', 'ABBA', 'Arrival', '1976-08-16', 'Clean'),
    ('Wish You Were Here', 'Pink Floyd', 'Wish You Were Here', '1975-09-12', 'Clean'),
    ('The Sound of Silence', 'Simon & Garfunkel', 'Parsley, Sage, Rosemary and Thyme', '1966-01-17', 'Clean');
    
CREATE TABLE album (
disc_ID 	INT NOT NULL AUTO_INCREMENT,
artist 		VARCHAR(30),
album_name 	VARCHAR(50) NOT NULL UNIQUE,
release_date DATE,
genre 		VARCHAR(30),
PRIMARY KEY(disc_id)
);

-- Insert test values into album table
INSERT INTO album (artist, album_name, release_date, genre)
VALUES
  ('Ed Sheeran', 'Divide', '2017-03-03', 'Pop'),
  ('Queen', 'A Night at the Opera', '1975-11-21', 'Rock'),
  ('John Lennon', 'Imagine', '1971-09-09', 'Rock'),
  ('Eagles', 'Hotel California', '1976-12-08', 'Rock'),
  ('The Weeknd', 'After Hours', '2020-03-20', 'R&B'),
  ('The Beatles', 'Help!', '1965-08-06', 'Rock'),
  ('Michael Jackson', 'Thriller', '1982-11-30', 'Pop'),
  ('Led Zeppelin', 'Led Zeppelin IV', '1971-11-08', 'Rock'),
  ('Adele', '21', '2011-01-19', 'Pop'),
  ('Jimi Hendrix', 'Are You Experienced', '1967-05-12', 'Rock'),
  ('Guns N\' Roses', 'Appetite for Destruction', '1987-07-21', 'Rock'),
  ('Nirvana', 'Nevermind', '1991-09-24', 'Grunge'),
  ('Earth, Wind & Fire', 'I Am', '1979-06-09', 'Funk'),
  ('The Police', 'Synchronicity', '1983-06-17', 'Rock'),
  ('John Legend', 'Love in the Future', '2013-08-30', 'R&B'),
  ('Oasis', '(What\'s the Story) Morning Glory?', '1995-10-02', 'Rock'),
  ('The Beatles', 'Let It Be', '1970-05-08', 'Rock'),
  ('Imagine Dragons', 'Night Visions', '2012-09-04', 'Alternative'),
  ('The Beatles', 'Magical Mystery Tour', '1967-11-27', 'Rock'),
  ('The White Stripes', 'Elephant', '2003-04-01', 'Rock'),
  ('ABBA', 'Arrival', '1976-10-11', 'Pop'),
  ('Pink Floyd', 'Wish You Were Here', '1975-09-12', 'Rock'),
  ('Simon & Garfunkel', 'Parsley, Sage, Rosemary and Thyme', '1966-10-24', 'Folk');
  
    
    CREATE TABLE customer(
		customer_id INT NOT NULL AUTO_INCREMENT,
        fname 		VARCHAR(20),
        lname		VARCHAR(20),
		phone_num	CHAR(12), -- format xx-xxx-xxxx for insert
        PRIMARY KEY(customer_id)
    );
    
    CREATE TABLE sale(
    sale_id 	INT NOT NULL AUTO_INCREMENT,
    customer_id INT NOT NULL,
    sale_date 	DATE,
    disc_ID		INT,
    song_ID		INT,
    PRIMARY KEY(sale_id),
	FOREIGN KEY(customer_id)
		REFERENCES customer(customer_id),
	FOREIGN KEY (disc_ID)
		REFERENCES album(disc_ID)
    );
    
    CREATE TABLE pre_order(
    pre_order_id 	INT NOT NULL,
    sale_id 		INT,
	customer_id 	INT	NOT NULL,
    pickup_date 	DATE, 
    album_id		INT,
    song_id			INT,
    FOREIGN KEY(sale_id) 
		REFERENCES sale(sale_id)
        ON UPDATE CASCADE,
	FOREIGN KEY(customer_id)
		REFERENCES customer(customer_id)
        ON UPDATE CASCADE,
	PRIMARY KEY(pre_order_id)
	);
    
    -- employee and manager table not yet in use
    CREATE TABLE employee(
		employee_id 	INT NOT NULL PRIMARY KEY
    );
    
    CREATE TABLE manager(
		manager_id INT NOT NULL PRIMARY KEY,
        FOREIGN KEY(manager_id) 
			REFERENCES employee(employee_id)
    );