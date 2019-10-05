CREATE TABLE users 
(
userid INT PRIMARY KEY NOT NULL,
password TEXT NOT NULL,
name TEXT NOT NULL,
DOB DATE,
mobno INT, 
email TEXT,
ACCOUNT_NO INT NOT NULL
);



CREATE TABLE questions
(
id INT PRIMARY KEY NOT NULL,
quest TEXT NOT NULL, 
category TEXT NOT NULL,
kys INT NOT NULL,
alpha FLOAT
);



CREATE TABLE ocean
(
userid INT REFERENCES users(userid),
o FLOAT,
c FLOAT,
e FLOAT,
a FLOAT,
n FLOAT 
);



INSERT INTO questions (id,quest, category, kys, alpha)
VALUES (1,'Worry about things','N',+1,0.78);
INSERT INTO questions (id, quest, category, kys, alpha)
VALUES (2,'Fear for the worst','N',+1,0.78);
INSERT INTO questions (id,quest, category, kys, alpha)
VALUES (3,'Am afraid of many things','N',+1,0.78);
INSERT INTO questions (id,quest, category, kys, alpha)
VALUES (4,'Get stressed out easily','N',+1,0.78);

INSERT INTO questions (id, quest, category, kys, alpha)
VALUES (5,'Get angry easily','N',+1,0.87);
INSERT INTO questions (id, quest, category, kys, alpha)
VALUES (6,'Get irritated easily','N',+1,0.87);
INSERT INTO questions (id, quest, category, kys, alpha)
VALUES (7,'Lose my temper','N',+1,0.87);
INSERT INTO questions (id, quest, category, kys, alpha)
VALUES (8,'Am not easily annoyed','N',-1,0.87);

INSERT INTO questions (id, quest, category, kys, alpha)
VALUES (9,'Often feel blue','N',+1,0.85);
INSERT INTO questions (id, quest, category, kys, alpha)
VALUES (10,'Dislike myself','N',+1,0.85);
INSERT INTO questions (id, quest, category, kys, alpha)
VALUES (11,'Am often down in the dumps','N',+1,0.85);
INSERT INTO questions (id, quest, category, kys, alpha)
VALUES (12,'Feel comfortable with myself','N',-1,0.85);

INSERT INTO questions (id, quest, category, kys, alpha)
VALUES (13,'Find it difficult to approach others','N',+1,0.7);
INSERT INTO questions (id, quest, category, kys, alpha)
VALUES (14,'Am afraid to draw attention to myself','N',+1,0.7);
INSERT INTO questions (id, quest, category, kys, alpha)
VALUES (15,'Only feel comfortable with friends','N',+1,0.7);
INSERT INTO questions (id, quest, category, kys, alpha)
VALUES (16,'Am not bothered by difficult social situations','N',-1,0.7);

INSERT INTO questions (id, quest, category, kys, alpha)
VALUES (17,'Go on binges','N',+1,0.69);
INSERT INTO questions (id, quest, category, kys, alpha)
VALUES (18,'Rarely overindulge','N',-1,0.69);
INSERT INTO questions (id, quest, category, kys, alpha)
VALUES (19,'Easily resist temptations','N',-1,0.69);
INSERT INTO questions (id, quest, category, kys, alpha)
VALUES (20,'Am able to control my cravings','N',-1,0.69);

INSERT INTO questions (id,quest, category, kys, alpha)
VALUES (21,'Panic easily','N',+1,0.76);
INSERT INTO questions (id,quest, category, kys, alpha)
VALUES (22,'Become overwhelmed by events','N',+1,0.76);
INSERT INTO questions (id,quest, category, kys, alpha)
VALUES (23,'Feel that I am unable to deal with things','N',+1,0.76);
INSERT INTO questions (id,quest, category, kys, alpha)
VALUES (24,'Remain calm under pressure','N',-1,0.76);

INSERT INTO questions (id,quest, category, kys, alpha)
VALUES (25,'Make friends easily','E',+1,0.81);
INSERT INTO questions (id,quest, category, kys, alpha)
VALUES (26,'Feel comfortable around people','E',+1,0.81);
INSERT INTO questions (id,quest, category, kys, alpha)
VALUES (27,'Avoid contacts with others','E',-1,0.81);
INSERT INTO questions (id,quest, category, kys, alpha)
VALUES (28,'Keep others at a distance','E',-1,0.81);

INSERT INTO questions (id,quest, category, kys, alpha)
VALUES (29,'Love large parties','E',+1,0.79);
INSERT INTO questions (id,quest, category, kys, alpha)
VALUES (30,'Talk to a lot of different people at parties','E',+1,0.79);
INSERT INTO questions (id,quest, category, kys, alpha)
VALUES (31,'Prefer to be alone','E',-1,0.79);
INSERT INTO questions (id,quest, category, kys, alpha)
VALUES (32,'Avoid crowds','E',-1,0.79);

INSERT INTO questions (id,quest, category, kys, alpha)
VALUES (33,'Take charge','E',+1,0.85);
INSERT INTO questions (id,quest, category, kys, alpha)
VALUES (34,'Try to lead others','E',+1,0.85);
INSERT INTO questions (id,quest, category, kys, alpha)
VALUES (35,'Take control of things','E',+1,0.85);
INSERT INTO questions (id,quest, category, kys, alpha)
VALUES (36,'Wait for others to lead the way','E',-1,0.85);

INSERT INTO questions (id,quest, category, kys, alpha)
VALUES (37,'Am always busy','E',+1,0.69);
INSERT INTO questions (id,quest, category, kys, alpha)
VALUES (38,'Am always on the go','E',+1,0.69);
INSERT INTO questions (id,quest, category, kys, alpha)
VALUES (39,'Do a lot in my spare time','E',+1,0.69);
INSERT INTO questions (id,quest, category, kys, alpha)
VALUES (40,'Like to take it easy','E',-1,0.69);


INSERT INTO questions (id,quest, category, kys, alpha)
VALUES (41,'Love excitement','E',+1,0.73);
INSERT INTO questions (id,quest, category, kys, alpha)
VALUES (42,'Seek adventure','E',+1,0.73);
INSERT INTO questions (id,quest, category, kys, alpha)
VALUES (43,'Enjoy being reckless','E',+1,0.73);
INSERT INTO questions (id,quest, category, kys, alpha)
VALUES (44,'Act wild and crazy','E',+1,0.73);



INSERT INTO questions (id,quest, category, kys, alpha)
VALUES (45,'Radiate joy','E',+1,0.79);
INSERT INTO questions (id,quest, category, kys, alpha)
VALUES (46,'Have a lot of fun','E',+1,0.79);
INSERT INTO questions (id,quest, category, kys, alpha)
VALUES (47,'Love life','E',+1,0.79);
INSERT INTO questions (id,quest, category, kys, alpha)
VALUES (48,'Look at the bright side of life','E',+1,0.79);

INSERT INTO questions (id,quest, category, kys, alpha)
VALUES (49,'Have a vivid imagination','O',+1,0.74);
INSERT INTO questions (id,quest, category, kys, alpha)
VALUES (50,'Enjoy wild flights of fantasy','O',+1,0.74);
INSERT INTO questions (id,quest, category, kys, alpha)
VALUES (51,'Love to daydream','O',+1,0.74);
INSERT INTO questions (id,quest, category, kys, alpha)
VALUES (52,'Like to get lost in thought','O',+1,0.74);

INSERT INTO questions (id,quest, category, kys, alpha)
VALUES (53,'Believe in the importance of art','O',+1,0.74);
INSERT INTO questions (id,quest, category, kys, alpha)
VALUES (54,'See beauty in things that others might not notice','O',+1,0.74);
INSERT INTO questions (id,quest, category, kys, alpha)
VALUES (55,'Do not like poetry','O',-1,0.74);
INSERT INTO questions (id,quest, category, kys, alpha)
VALUES (56,'Do not enjoy going to art museums','O',-1,0.74);


INSERT INTO questions (id,quest, category, kys, alpha)
VALUES (57,'Experience my emotions intensely','O',+1,0.65);
INSERT INTO questions (id,quest, category, kys, alpha)
VALUES (58,'Feel others emotions','O',+1,0.65);
INSERT INTO questions (id,quest, category, kys, alpha)
VALUES (59,'Rarely notice my emotional reactions','O',-1,0.65);
INSERT INTO questions (id,quest, category, kys, alpha)
VALUES (60,'Dont understand people who get emotional','O',-1,0.65);

INSERT INTO questions (id,quest, category, kys, alpha)
VALUES (61,'Prefer variety to routine','O',+1,0.7);
INSERT INTO questions (id,quest, category, kys, alpha)
VALUES (62,'Prefer to stick with things that I know','O',+1,0.7);
INSERT INTO questions (id,quest, category, kys, alpha)
VALUES (63,'Dislike changes','O',-1,0.7);
INSERT INTO questions (id,quest, category, kys, alpha)
VALUES (64,'Am attached to conventional ways','O',-1,0.7);

INSERT INTO questions (id,quest, category, kys, alpha)
VALUES (65,'Love to read challenging material','O',+1,0.73);
INSERT INTO questions (id,quest, category, kys, alpha)
VALUES (66,'Avoid philosophical discussions','O',-1,0.73);
INSERT INTO questions (id,quest, category, kys, alpha)
VALUES (67,'Have difficulty understanding abstract ideas','O',-1,0.73);
INSERT INTO questions (id,quest, category, kys, alpha)
VALUES (68,'Am not interested in theoretical discussions','O',-1,0.73);

INSERT INTO questions (id,quest, category, kys, alpha)
VALUES (69,'Tend to vote for liberal political candidates','O',+1,0.63);
INSERT INTO questions (id,quest, category, kys, alpha)
VALUES (70,'Believe that there is no absolute right and wrong','O',+1,0.63);
INSERT INTO questions (id,quest, category, kys, alpha)
VALUES (71,'Tend to vote for conservative political candidates','O',-1,0.63);
INSERT INTO questions (id,quest, category, kys, alpha)
VALUES (72,'Believe that we should be tough on crime','O',-1,0.63);

INSERT INTO questions (id,quest, category, kys, alpha)
VALUES (73,'Trust others','A',1,0.85);
INSERT INTO questions (id,quest, category, kys, alpha)
VALUES (74,'Believe that others have good intentions','A',1,0.85);
INSERT INTO questions (id,quest, category, kys, alpha)
VALUES (75,'Trust what people say','A',1,0.85);
INSERT INTO questions (id,quest, category, kys, alpha)
VALUES (76,'Distrust people','A',1,0.85);

INSERT INTO questions (id,quest, category, kys, alpha)
VALUES (77,'Use others for my own ends','A',-1,0.74);
INSERT INTO questions (id,quest, category, kys, alpha)
VALUES (78,'Cheat to get ahead','A',-1,0.74);
INSERT INTO questions (id,quest, category, kys, alpha)
VALUES (79,'Take advantage of others','A',-1,0.74);
INSERT INTO questions (id,quest, category, kys, alpha)
VALUES (80,'Obstruct others plans','A',-1,0.74);

INSERT INTO questions (id,quest, category, kys, alpha)
VALUES (81,'Am concerned about others','A',+1,0.73);
INSERT INTO questions (id,quest, category, kys, alpha)
VALUES (82,'Love to help others','A',+1,0.73);
INSERT INTO questions (id,quest, category, kys, alpha)
VALUES (83,'Am indifferent to the feelings of others','A',-1,0.73);
INSERT INTO questions (id,quest, category, kys, alpha)
VALUES (84,'Take no time for others','A',-1,0.73);

INSERT INTO questions (id,quest, category, kys, alpha)
VALUES (85,'Love a good fight','A',-1,0.71);
INSERT INTO questions (id,quest, category, kys, alpha)
VALUES (86,'Yell at people','A',-1,0.71);
INSERT INTO questions (id,quest, category, kys, alpha)
VALUES (87,'Insult people','A',-1,0.71);
INSERT INTO questions (id,quest, category, kys, alpha)
VALUES (88,'Get back at others','A',-1,0.71);

INSERT INTO questions (id,quest, category, kys, alpha)
VALUES (89,'Believe that I am better than others','A',-1,0.73);
INSERT INTO questions (id,quest, category, kys, alpha)
VALUES (90,'Think highly of myself','A',-1,0.73);
INSERT INTO questions (id,quest, category, kys, alpha)
VALUES (91,'Have a high opinion of myself','A',-1,0.73);
INSERT INTO questions (id,quest, category, kys, alpha)
VALUES (92,'Boast about my virtues','A',-1,0.73);


INSERT INTO questions (id,quest, category, kys, alpha)
VALUES (93,'Sympathize with the homeless','A',1,0.72);
INSERT INTO questions (id,quest, category, kys, alpha)
VALUES (94,'Feel sympathy for those who are worse off than myself','A',1,0.72);
INSERT INTO questions (id,quest, category, kys, alpha)
VALUES (95,'Am not interested in other peoples problems','A',-1,0.72);
INSERT INTO questions (id,quest, category, kys, alpha)
VALUES (96,'Try not to think about the needy','A',-1,0.72);

INSERT INTO questions (id,quest, category, kys, alpha)
VALUES (97,'Complete tasks successfully','C',1,0.77);
INSERT INTO questions (id,quest, category, kys, alpha)
VALUES (98,'Excel in what I do','C',1,0.77);
INSERT INTO questions (id,quest, category, kys, alpha)
VALUES (99,'Handle tasks smoothly','C',1,0.77);
INSERT INTO questions (id,quest, category, kys, alpha)
VALUES (100,'Know how to get things done','C',1,0.77);

INSERT INTO questions (id,quest, category, kys, alpha)
VALUES (101,'Like to tidy up','C',+1,0.83);
INSERT INTO questions (id,quest, category, kys, alpha)
VALUES (102,'Often forget to put things back in their proper place','C',-1,0.83);
INSERT INTO questions (id,quest, category, kys, alpha)
VALUES (103,'Leave a mess in my room','C',-1,0.83);
INSERT INTO questions (id,quest, category, kys, alpha)
VALUES (104,'Leave my belongings around','C',-1,0.83);

INSERT INTO questions (id,quest, category, kys, alpha)
VALUES (105,'Keep my promises','C',+1,0.67);
INSERT INTO questions (id,quest, category, kys, alpha)
VALUES (106,'Tell the truth','C',+1,0.67);
INSERT INTO questions (id,quest, category, kys, alpha)
VALUES (107,'Break rules','C',-1,0.67);
INSERT INTO questions (id,quest, category, kys, alpha)
VALUES (108,'Break my promises','C',-1,0.67);

INSERT INTO questions (id,quest, category, kys, alpha)
VALUES (109,'Do more than whats expected of me','C',+1,0.79);
INSERT INTO questions (id,quest, category, kys, alpha)
VALUES (110,'Work hard','C',+1,0.79);
INSERT INTO questions (id,quest, category, kys, alpha)
VALUES (111,'Put little time and effort into my work','C',-1,0.79);
INSERT INTO questions (id,quest, category, kys, alpha)
VALUES (112,'Do just enough work to get by','C',-1,0.79);

INSERT INTO questions (id,quest, category, kys, alpha)
VALUES (113,'Am always prepared','C',1,0.71);
INSERT INTO questions (id,quest, category, kys, alpha)
VALUES (114,'Carry out my plans','C',1,0.71);
INSERT INTO questions (id,quest, category, kys, alpha)
VALUES (115,'Waste my time','C',-1,0.71);
INSERT INTO questions (id,quest, category, kys, alpha)
VALUES (116,'Have difficulty starting tasks','C',-1,0.71);

INSERT INTO questions (id,quest, category, kys, alpha)
VALUES (117,'Jump into things without thinking','C',-1,0.88);
INSERT INTO questions (id,quest, category, kys, alpha)
VALUES (118,'Make rash decisions','C',-1,0.88);
INSERT INTO questions (id,quest, category, kys, alpha)
VALUES (119,'Rush into things','C',-1,0.88);
INSERT INTO questions (id,quest, category, kys, alpha)
VALUES (120,'Act without thinking','C',-1,0.88);







