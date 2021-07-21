CREATE TABLE `Entry` (
    `id`	INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    `date`	TEXT NOT NULL,
    `concept`	TEXT NOT NULL,
    `entry`	TEXT NOT NULL,
    `mood_id`	INTEGER NOT NULL,
    FOREIGN KEY(`mood_id`) REFERENCES `Moods`(`id`)
    
);

CREATE TABLE `Moods` (
    `id` INTEGER NOT NULL PRIMARY KEY,
    `title` TEXT NOT NULL
);

CREATE TABLE `Tag` (
    `id` INTEGER NOT NULL PRIMARY KEY,
    `name` TEXT NOT NULL
);

CREATE TABLE `Entry_tag` (
    `id` INTEGER NOT NULL PRIMARY KEY,
    `entry_id` INTEGER NOT NULL,
    `tag_id` INTEGER NOT NULL,
    FOREIGN KEY(`entry_id`) REFERENCES `Entry`(`id`),
    FOREIGN KEY(`tag_id`) REFERENCES `Tag`(`id`)
);

INSERT INTO `Moods` VALUES (null, "Good");
INSERT INTO `Moods` VALUES (null, "Bad");
INSERT INTO `Moods` VALUES (null, "Lukewarm");

INSERT INTO `Tag` VALUES (null, "SQL");
INSERT INTO `Tag` VALUES (null, "Python");
INSERT INTO `Tag` VALUES (null, "Projects");

INSERT INTO `Entry` VALUES (null, "1/1/2021", "SQL Queries", "Today we did the SQL Bolt Exercises", 1);

INSERT INTO `Entry` VALUES (null, "4/1/2021", "Installations", "Today we went over Python Installations", 2);

INSERT INTO `Entry` VALUES (null, "7/1/2021", "Client Side Presentations", "Today we presented our client-side capstones", 3);

SELECT 
    a.id,
    a.date, 
    a.concept, 
    a.entry, 
    a.mood_id,
    m.title mood_title
from Entry a 
JOIN Moods m
    ON m.id = a.mood_id
;


SELECT * FROM Entry ORDER BY id DESC;

SELECT * FROM Entry
WHERE entry LIKE "%Python%"
