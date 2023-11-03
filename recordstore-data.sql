DROP DATABASE IF EXISTS recordstore;
CREATE DATABASE recordstore;
USE recordstore;

CREATE TABLE album (
disc_ID 	INT NOT NULL AUTO_INCREMENT,
artist 		VARCHAR(30),
album_name 	VARCHAR(50),
release_date DATE,
genre 		VARCHAR(30),
PRIMARY KEY(Disc_ID)
);

-- Insert test values into album table
INSERT INTO album (artist, album_name, release_date, genre)
VALUES
    ('Artist1', 'AlbumName1', '2023-01-01', 'Genre1'),
    ('Artist2', 'AlbumName2', '2023-02-15', 'Genre2'),
    ('Artist3', 'AlbumName3', '2023-03-20', 'Genre3'),
    ('Artist4', 'AlbumName4', '2023-04-05', 'Genre4'),
    ('Artist5', 'AlbumName5', '2023-05-10', 'Genre5'),
    ('Artist6', 'AlbumName6', '2023-06-18', 'Genre6'),
    ('Artist7', 'AlbumName7', '2023-07-22', 'Genre7'),
    ('Artist8', 'AlbumName8', '2023-08-30', 'Genre8'),
    ('Artist9', 'AlbumName9', '2023-09-07', 'Genre9'),
    ('Artist10', 'AlbumName10', '2023-10-12', 'Genre10');

-- TODO: Foreign keys in song table reference to album table?
CREATE TABLE song(
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
    
    CREATE TABLE customer(
		customer_id INT NOT NULL AUTO_INCREMENT,
        fname 		VARCHAR(20),
        lname		VARCHAR(20),
		phone_num	CHAR(12), -- format xxx-xxx-xxxx for insert
        PRIMARY KEY(customer_id)
    );
    
    CREATE TABLE sale(
    sale_id 	INT NOT NULL AUTO_INCREMENT,
    customer_id INT NOT NULL,
    sale_date 	DATE,
    PRIMARY KEY(sale_id)
    );
    
    CREATE TABLE pre_order(
    pre_order_id 	INT NOT NULL,
	customer_id 	INT	NOT NULL,
    pickup_date 	DATE, 
    album_id		INT,
    FOREIGN KEY(pre_order_id) 
		REFERENCES sale(sale_id),
	FOREIGN KEY(customer_id)
		REFERENCES customer(customer_id),
	PRIMARY KEY(pre_order_id)
	);
    
    CREATE TABLE employee(
		employee_id 	INT NOT NULL PRIMARY KEY
    );
    
    CREATE TABLE manager(
		manager_id INT NOT NULL PRIMARY KEY,
        FOREIGN KEY(manager_id) 
			REFERENCES employee(employee_id)
    );
