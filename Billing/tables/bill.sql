CREATE TABLE bill(
program varchar(30) not null ,
username varchar(30) not null,
numberofcalls int not null,
price varchar(20) not null;

INSERT INTO bill (program,username,numberofcalls,price) VALUES ('family','anto',33,'20$');
INSERT INTO bill (program,username,numberofcalls,price) VALUES ('regular','xrnt',25,'20$');
INSERT INTO bill (program,username,numberofcalls,price) VALUES ('student2','yiannospap',30,'15$');
