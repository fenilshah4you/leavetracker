--
-- File generated with SQLiteStudio v3.3.3 on Thu Sep 29 14:41:16 2022
--
-- Text encoding used: System
--
PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

-- Table: leave_request
CREATE TABLE leave_request (id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, fk_userid INTEGER NOT NULL REFERENCES users (id), from_date DATE NOT NULL, to_date DATE NOT NULL, leave_reason TEXT NOT NULL, status TEXT, approved_byid TEXT REFERENCES users (id), approved_date DATETIME, approval_comments TEXT, submitted_id INTEGER REFERENCES users (id) NOT NULL, UNIQUE (fk_userid, from_date, to_date, status));
INSERT INTO leave_request (id, fk_userid, from_date, to_date, leave_reason, status, approved_byid, approved_date, approval_comments, submitted_id) VALUES (1, 2, '2022-09-09 00:00:00.000000', '2022-09-09 00:00:00.000000', 'test reason', 'Approved', '1', '2022-09-28 14:11:20.976325', 'test', 1);
INSERT INTO leave_request (id, fk_userid, from_date, to_date, leave_reason, status, approved_byid, approved_date, approval_comments, submitted_id) VALUES (2, 2, '2022-10-09 00:00:00.000000', '2022-10-09 00:00:00.000000', 'test reason', '', NULL, NULL, NULL, 1);
INSERT INTO leave_request (id, fk_userid, from_date, to_date, leave_reason, status, approved_byid, approved_date, approval_comments, submitted_id) VALUES (3, 2, '2022-11-09 00:00:00.000000', '2022-11-09 00:00:00.000000', 'test reason', '', NULL, NULL, NULL, 1);
INSERT INTO leave_request (id, fk_userid, from_date, to_date, leave_reason, status, approved_byid, approved_date, approval_comments, submitted_id) VALUES (4, 2, '2022-09-12 00:00:00.000000', '2022-09-12 00:00:00.000000', 'test reason', '', NULL, NULL, NULL, 1);
INSERT INTO leave_request (id, fk_userid, from_date, to_date, leave_reason, status, approved_byid, approved_date, approval_comments, submitted_id) VALUES (5, 2, '2022-09-13 00:00:00.000000', '2022-09-13 00:00:00.000000', 'test reason', '', NULL, NULL, NULL, 1);
INSERT INTO leave_request (id, fk_userid, from_date, to_date, leave_reason, status, approved_byid, approved_date, approval_comments, submitted_id) VALUES (6, 2, '2022-09-29 00:00:00.000000', '2022-09-29 00:00:00.000000', 'test', 'Submitted', NULL, NULL, NULL, 1);
INSERT INTO leave_request (id, fk_userid, from_date, to_date, leave_reason, status, approved_byid, approved_date, approval_comments, submitted_id) VALUES (7, 6, '2022-09-30 00:00:00.000000', '2022-09-30 00:00:00.000000', 'test', 'Rejected', '6', '2022-09-29 14:17:02.586873', 'Not Ok', 1);

-- Table: users
CREATE TABLE users (id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, name TEXT NOT NULL, email TEXT NOT NULL, password TEXT NOT NULL, role TEXT NOT NULL);
INSERT INTO users (id, name, email, password, role) VALUES (1, 'Fenil', 'fenil.shah@test.com', 'sha256$cNphHyQNczhWlMZQ$b46ae9f0e5ec05429bfe95d5e89dd957f8c42ca81fe0c8b02cbbcc942a98f24e', 'User');
INSERT INTO users (id, name, email, password, role) VALUES (2, 'Greg', 'greg@test.com', 'sha256$cNphHyQNczhWlMZQ$b46ae9f0e5ec05429bfe95d5e89dd957f8c42ca81fe0c8b02cbbcc942a98f24e', 'Manager');
INSERT INTO users (id, name, email, password, role) VALUES (6, 'Test1', 'test1@test.com', 'sha256$cNphHyQNczhWlMZQ$b46ae9f0e5ec05429bfe95d5e89dd957f8c42ca81fe0c8b02cbbcc942a98f24e', 'Manager');
INSERT INTO users (id, name, email, password, role) VALUES (8, 'Shah2', 'shah2@test.com', 'sha256$cNphHyQNczhWlMZQ$b46ae9f0e5ec05429bfe95d5e89dd957f8c42ca81fe0c8b02cbbcc942a98f24e', 'Manager');

COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
