create database if not exists mi_proyecto_db;

use mi_proyecto_db;


create table if not exists users(

	id int(255) auto_increment not null,
	role varchar(20),
	name varchar(100),
	surname varchar(200),
	nick varchar(100),
	email varchar(255),
	password varchar(255),
	image varchar(255),
	create_at datetime,
	update_at datetime,
	remember_token varchar(255),
	constraint pk_user primary key (id)
)engine=InnoDb;


create table if not exists image(

	id int(255) auto_increment not null,
	user_id int(255),
	image_path varchar(255),
	description text,
	create_at datetime,
	update_at datetime,
	constraint pk_image primary key (id),
	constraint fk_image_user foreign key (user_id) references users(id)
)engine=InnoDb;


create table if not exists comment(

	id int(255) auto_increment not null,
	user_id int(255),
	image_id int(255),
	content text,
	create_at datetime,
	update_at datetime,
	constraint pk_comment primary key (id),
	constraint fk_comment_user foreign key (user_id) references users(id),
	constraint fk_comment_image foreign key (image_id) references image(id)
)engine=InnoDb;


create table if not exists liked(

	id int(255) auto_increment not null,
	user_id int(255),
	image_id int(255),
	create_at datetime,
	update_at datetime,
	constraint pk_like primary key (id),
	constraint fk_like_user foreign key (user_id) references users(id),
	constraint fk_like_image foreign key (image_id) references image(id)
)engine=InnoDb;



insert into image values 
	(NULL, 1, 'david.png', 'davidlaraweb', curtime(), curtime() ),
	(NULL, 2, 'deicy.png', 'DEcis', curtime(), curtime() ),
	(NULL, 3, 'juan.png', 'Perezss', curtime(), curtime() );


insert into image values 
	(NULL, 'user', 'David', 'Lara', 'davidlaraweb', 'david@mail.com', '123', NULL, curtime(), curtime(), NULL),
	(NULL, 'user', 'Deicy', 'Rojas', 'davidlaraweb', 'david@mail.com', '123', NULL, curtime(), curtime(), NULL),
	(NULL, 'user', 'Juan', 'Perez', 'davidlaraweb', 'david@mail.com', '123', NULL, curtime(), curtime(), NULL);


insert into comment values 
	(NULL, 1, 1, 'david.pngdavidlaraweb', curtime(), curtime() ),
	(NULL, 2, 2, 'deicy.DEcis', curtime(), curtime() ),
	(NULL, 3, 3, 'juan.pPerezss', curtime(), curtime() );


insert into liked values 
	(NULL, 1, 1, curtime(), curtime() ),
	(NULL, 2, 2, curtime(), curtime() ),
	(NULL, 3, 3, curtime(), curtime() );
