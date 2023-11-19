-- Вставка даних в таблицу Platform
INSERT INTO Platform (platform_id, Platform_Name) VALUES
(1, 'Wii'),
(2, 'NES'),
(3, 'GB'),
(4, 'DS'),
(5, 'X360'),
(6, 'PS3'),
(7, 'PS2'),
(8, 'SNES');

-- Вставка даних в таблицу Publisher
INSERT INTO Publisher (publisher_id, Publisher_Name) VALUES
(1, 'Nintendo'),
(2, 'Microsoft Game Studios'),
(3, 'Take-Two Interactive');

-- Вставка даних в таблицу Game
INSERT INTO Game (game_id, Name, Year, Genre, Global_Sales, platform_id, publisher_id) VALUES
(1, 'Wii Sports', 2006, 'Sports', 82.74, 1, 1),
(2, 'Super Mario Bros.', 1985, 'Platform', 40.24, 2, 1),
(3, 'Mario Kart Wii', 2008, 'Racing', 35.82, 1, 1),
(4, 'Wii Sports Resort', 2009, 'Sports', 33, 1, 1),
(5, 'Pokemon Red/Pokemon Blue', 1996, 'Role-Playing', 31.37, 3, 1),
(6, 'Tetris', 1989, 'Puzzle', 30.26, 3, 1),
(7, 'New Super Mario Bros.', 2006, 'Platform', 30.01, 4, 1),
(8, 'Wii Play', 2006, 'Misc', 29.02, 1, 1),
(9, 'New Super Mario Bros. Wii', 2009, 'Platform', 28.62, 1, 1),
(10, 'Duck Hunt', 1984, 'Shooter', 28.31, 2, 1),
(11, 'Nintendogs', 2005, 'Simulation', 24.76, 4, 1),
(12, 'Mario Kart DS', 2005, 'Racing', 23.42, 4, 1),
(13, 'Pokemon Gold/Pokemon Silver', 1999, 'Role-Playing', 23.1, 3, 1),
(14, 'Wii Fit', 2007, 'Sports', 22.72, 1, 1),
(15, 'Wii Fit Plus', 2009, 'Sports', 22, 1, 1),
(16, 'Kinect Adventures!', 2010, 'Misc', 21.82, 5, 2),
(17, 'Grand Theft Auto V', 2013, 'Action', 21.4, 6, 3),
(18, 'Grand Theft Auto: San Andreas', 2004, 'Action', 20.81, 7, 3),
(19, 'Super Mario World', 1990, 'Platform', 20.61, 8, 1);
