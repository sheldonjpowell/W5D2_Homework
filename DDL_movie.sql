-- DDL --


-- CUSTOMER TABLE --

create table customer( 
	customer_id SERIAL primary key,
	first_name VARCHAR(50),
	last_name VARCHAR(50),
	email VARCHAR(50) UNIQUE,
	stub_member BOOLEAN DEFAULT FALSE
);

select *
from customer


-- MOVIES TABLE --

create table movies(
	movie_id  SERIAL primary key,
	title_name VARCHAR (50),
	description VARCHAR (100),
	rating numeric(2,1),
--	FOREIGN KEY(customer_id) REFERENCES customer(customer_id) 
	);
	

-- TICKETS TABLE --
	
create table tickets(
	ticket_id SERIAL primary key,
	order_date TIMESTAMP default CURRENT_TIMESTAMP,
	seats NUMERIC(2,1),
	ticket_total numeric(6,2)
--	FOREIGN KEY(movie_id) REFERENCES movies(movie_id) 
	
);

select *
from tickets 

--ADD FOREIGN KEY TO TICKETS

alter table tickets 
add foreign key (movie_id) REFERENCES movies(movie_id); 



-- CONCESSIONS TABLE --

create table concessions(
	food VARCHAR (50),
	drink VARCHAR (50),
	concession_total numeric(5,2),
--	FOREIGN KEY(customer_id) REFERENCES customer(customer_id) 
);

select *
from customer 
