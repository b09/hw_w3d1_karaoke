DROP TABLE guests;
DROP TABLE rooms;
DROP TABLE songs;

CREATE TABLE guests (
  id SERIAL8 PRIMARY KEY,
  name VARCHAR(255),
  wallet INT
);

INSERT INTO guests (name, wallet) VALUES ('Homer', 2);
INSERT INTO guests (name, wallet) VALUES ('Flanders', 9);
INSERT INTO guests (name, wallet) VALUES ('Skinner', 3);
INSERT INTO guests (name, wallet) VALUES ('Bart', 4);
INSERT INTO guests (name, wallet) VALUES ('Lisa', 6);

SELECT name FROM guests ORDER BY name DESC;

CREATE TABLE rooms (
  id SERIAL8 PRIMARY KEY,
  room_number INT,
  fee INT
);

INSERT INTO rooms (room_number, fee) VALUES (2, 3);
INSERT INTO rooms (room_number, fee) VALUES (2, 4);

SELECT * FROM rooms;

-- CREATE TABLE room_song (
--   id SERIAL8 PRIMARY KEY,
--   room_id INT8 REFERENCES rooms (id),
--   songs_id INT8 REFERENCES songs (id)
-- );
--
-- INSERT INTO room_song (room_id, songs_id) VALUE (1, 5);
-- INSERT INTO room_song (room_id, songs_id) VALUE (1, 3);
-- INSERT INTO room_song (room_id, songs_id) VALUE (1, 1);
-- INSERT INTO room_song (room_id, songs_id) VALUE (2, 1);
-- INSERT INTO room_song (room_id, songs_id) VALUE (2, 5);
-- INSERT INTO room_song (room_id, songs_id) VALUE (2, 4);
-- INSERT INTO room_song (room_id, songs_id) VALUE (2, 2);
--
-- SELECT * FROM room_song

CREATE TABLE songs (
  id SERIAL8 PRIMARY KEY,
  title VARCHAR(255) NOT NULL,
  artist VARCHAR(255) NOT NULL
);

INSERT INTO songs (title, artist) VALUES ('In the Woods', 'Jethro Tull');
INSERT INTO songs (title, artist) VALUES ('Baba ORielly', 'The Who');
INSERT INTO songs (title, artist) VALUES ('Daytime Dreamer', 'The Monkees');
INSERT INTO songs (title, artist) VALUES ('Team Spirit', 'Nirvana');
INSERT INTO songs (title, artist) VALUES ('Elegie', 'Rachmaninoff');

SELECT * FROM songs ORDER BY artist ASC;
