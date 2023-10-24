DROP DATABASE IF EXISTS recordstore;
CREATE DATABASE recordstore;
USE recordstore;

CREATE TABLE Album (
Disc_ID 	INT NOT NULL AUTO_INCREMENT,
Artist 		VARCHAR(30),
Album_Name 	VARCHAR(50),
ReleaseDate DATE,
Genre 		VARCHAR(30),
PRIMARY KEY(Disc_ID)
);

-- Insert test values into table
INSERT INTO Album (Artist, Album_Name, ReleaseDate, Genre)
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

SELECT * from Albums;