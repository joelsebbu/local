create table user_login(
	 email varchar(25) primary key
	,hashed_password varchar(25)
);
create table user_table(
	 user_id int identity(1,1) primary key 
	,full_name varchar(25)
	,email varchar(25)
	,phone_number varchar(25)
	,age varchar(25)
	,user_name varchar(25)
	,foreign key (email) references user_login(email)
);
/*
Extra table created to map role to role id and then role to user 
role table 
*/
create table role(
	 role_id varchar(25) primary key
	,role_name varchar(25)
);

create table user_role(
	 role_id varchar(25)
	,user_id int 
	,foreign key(user_id) references user_table(user_id)
	,foreign key(role_id) references role(role_id)
);

create table qualification(
	 qualification_id varchar(25) primary key
	,qualification_name varchar(25)
);

create table user_qualification(
	 user_id int
	,qualification_id varchar(25)
	,foreign key(user_id) references user_table(user_id)
	,foreign key(qualification_id) references qualification(qualification_id)
);

create table category(
	 category_id varchar(25) primary key
	,category_name varchar(25)
);

create table course(
	 course_id varchar(25) primary key
	,course_name varchar(25)
	,preview_video_link varchar(25)
	,instructor int
	,category_id varchar(25)
	,batch_max_size int
	,foreign key (instructor) references user_table(user_id)
	,foreign key (category_id) references category(category_id)
);