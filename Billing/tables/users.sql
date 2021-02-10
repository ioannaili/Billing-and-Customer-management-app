CREATE TABLE users (first_name varchar(30) not null,
last_name varchar(30) not null,
username varchar(30) primary key unique key,
email varchar(40) unique key not null,
password varchar(30) ,
role varchar(10) not null);

INSERT INTO users (first_name,last_name,username,email,password,role) VALUES ('antonis','liakos','anto','anto@gmail.com','123','Client');
INSERT INTO users (first_name,last_name,username,email,password,role) VALUES ('eva','felekidi','evafel','evafel@gmail.com','12345','Client');
INSERT INTO users (first_name,last_name,username,email,password,role) VALUES ('ioanna','iliadi','ioanna','ionili@gmail.com','0','Seller');
INSERT INTO users (first_name,last_name,username,email,password,role) VALUES ('kostas','papaxenidis','kpapax','kpapax@gmail.com','12345','Admin');
INSERT INTO users (first_name,last_name,username,email,password,role) VALUES ('Marios','Papaxenidis','mar','mar@gmail.com','23132132','Seller');
INSERT INTO users (first_name,last_name,username,email,password,role) VALUES ('marilena','tatsiou ','martat','martat@gmail.com','12345','Client');
INSERT INTO users (first_name,last_name,username,email,password,role) VALUES ('xristos','ntostis','xrnt','xrnt@gmail.com','12345','Client');
INSERT INTO users (first_name,last_name,username,email,password,role) VALUES ('yiannos','pap','yiannospap','yiannospap@gmail.com','12345','Client');
