alter table _countries 
add primary key (country_id),
modify country_id INT auto_increment,
add column title varchar(150) not null;
