create database MiniInstagram;
use MiniInstagram;

create table users(username varchar(50) primary key , email varchar(60) , bio varchar(255) , age int , dob date );
create table post( post_id int primary key , username varchar(50) ,  caption varchar (125) , image_url varchar(255) , foreign key(username) references users(username));
create table liked ( like_id int primary key , liked_by varchar(100), post_id int ,  foreign key(liked_by) references users(username) , foreign key(post_id) references post(post_id));
create table comments( comment_id int primary key , comment_by varchar(50), post_id int , comment_text text , foreign key(comment_by) references users(username) , foreign key (post_id) references post(post_id));
create table followers (followers varchar(50) , following varchar(50) , foreign key(followers) references users(username) , foreign key(following) references users(username));
