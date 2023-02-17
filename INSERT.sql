INSERT INTO Genre (Genre_id,Genre_Name) VALUES 
(1,'Rock'), (2, 'POP'), (3, 'Jazz'), (4, 'Electronic'), (5,'Classic');

INSERT INTO Executor (Executor_id,Executor_Name) VALUES
(1,'Executor_1'), (2, 'Executor_2'), (3, 'Executor_3'), (4, 'Executor_4'),
(5,'Executor_5'), (6,'Executor_6'), (7, 'Executor_7'), (8, 'Executor_8');

INSERT INTO Album (Album_id,Album_Name,Date) VALUES
(1,'Album_1', 2011), (2, 'Album_2', 2021), (3, 'Album_3', 2003), 
(4, 'Album_4', 1990), (5,'Album_5', 2007), (6,'Album_6', 2018), 
(7, 'Album_7', 2020), (8, 'Album_8', 2021);

INSERT INTO Track (Track_id,Track_Name,Duration,Album_id) VALUES
(1, 'Track_1', '00:15:14', 1), (2, 'Track_10', '00:03:36', 1),
(3, 'Track_2', '00:13:53', 2), (4, 'Track_11', '00:06:01', 2),
(5, 'Track_3', '00:14:00', 3), (6, 'Track_12', '00:02:36', 3),
(7, 'Track_4', '02:33:33', 4), (8, 'Track_13', '00:14:31', 4),
(9, 'Track_5', '00:11:40', 5), (10, 'Track_14', '00:02:34', 5),
(11, 'Track_6', '00:07:10', 6), (12, 'Track_15', '00:06:50', 6),
(13, 'Track_7', '00:06:12', 7), (14, 'Track_16', '00:09:55', 7),
(15, 'Track_8', '00:22:43', 8), (16, 'Track_17', '01:01:55', 8),
(17, 'Track_9','00:03:18', 1), (20, 'Track_9','00:03:18', 8);

INSERT INTO Collection (Collection_id,Collection_Name,Release_year) VALUES
(1, 'Best of rock', 2022), (2, 'Best of Pop', 2021), (3,'Best of Jazz', 2022),
(4, 'Best of Electronic', 2023), (5, 'Best of Classic', 2021);

INSERT INTO Genre_Executor VALUES (1, 2), (1, 6), (2, 3), (2, 8), (3, 4), (4, 1), (4, 7), (5, 5), (1,8);
INSERT INTO Executor_Album VALUES (1, 1), (2, 2), (3, 3), (4, 4), (5, 5), (6, 6), (7, 7), (8, 8);
INSERT INTO Track_Collection VALUES (3, 1), (4, 1), (11, 1), (12, 1), (5, 2), (6, 2), (15, 2), (16, 2),
(7, 3), (8, 3), (1, 4), (14, 4), (9, 5), (10, 5);