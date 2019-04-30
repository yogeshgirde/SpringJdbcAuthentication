##Tables##
create table users(
	username varchar(50) not null primary key,
	password varchar(100) not null,
	enabled boolean not null
);
create table authorities (
	username varchar(50) not null,
	authority varchar(50) not null,
	constraint authusersFk foreign key(username) references users(username)
);
create unique index usernameauthindex on authorities (username,authority);

##BASCI DATA##
insert into users(username,password,enabled) values('admin','$2a$10$A.Gbvyy89BD7tJAa0Q8cxe8S/Zh5b8nrxWrJLk8IKmXEQB4UAvery',true);
insert into authorities(username,authority) values('admin','ADMIN');

insert into users(username,password,enabled) values('sam','$2a$10$OdTpsFqtYyA7n3GQYit7s.bFMaO.n0fEnxG4WwJ8Zl7IRYOF1srnS',true);
insert into authorities(username,authority) values('sam','EMP');

insert into users(username,password,enabled) values('ram','$2a$10$0KCebvIiUM7SJbxzaO/xn.79QdA9ImQuhNDnXDTuFsvr.UQyN/s1W',true);
insert into authorities(username,authority)  values('ram','STD');		
##APP Queries##	
select username, password, enabled from users where username=?
select username, authority from authorities where username=?	