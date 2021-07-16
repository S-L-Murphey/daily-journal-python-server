CREATE TABLE `Entry` (
    `id`	INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    `date`	TEXT NOT NULL,
    `concept`	TEXT NOT NULL,
    `entry`	TEXT NOT NULL,
    `mood_id`	INTEGER NOT NULL,
    FOREIGN KEY(`mood_id`) REFERENCES `Mood`(`id`)
);

CREATE TABLE `Moods` (
    `id` INTEGER NOT NULL PRIMARY KEY,
    `title` TEXT NOT NULL,
);

INSERT INTO `Moods` VALUES (null, "Good");
INSERT INTO `Moods` VALUES (null, "Bad");
INSERT INTO `Moods` VALUES (null, "Lukewarm");

INSERT INTO `Entry` VALUES (null, "1/1/2021", "SQL Queries", "Today we did the SQL Bolt Exercises", 1);

INSERT INTO `Entry` VALUES (null, "4/1/2021", "Installations", "Today we went over Python Installations", 2);

INSERT INTO `Entry` VALUES (null, "7/1/2021", "Client Side Presentations", "Today we presented our client-side capstones", 3)

