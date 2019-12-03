

drop table primaryv1
drop table genre
drop table game_genre
drop table theme
drop table game_theme
drop table game_mode
drop table game_game_mode
drop table franchise
drop table game_franchise
drop table artwork
drop table similar_game
drop table age_description
drop table age_rating

-- Table 1
create table primaryv1(
	id int primary key not null,
	aggregated_rating float,
   	aggregated_rating_count float, 
    category int,	
	first_release_date float,
	franchise float,
	hypes float,
	name varchar(200),
	popularity float,
    pulse_count	float,
	rating float,
    rating_count float,
	slug varchar(200),
	storyline text,
    summary	text,
	time_to_beat float,
	total_rating float,
    total_rating_count float,
    url text
    );
	select * from primaryv1

-- Table 2
create table genre(
	genre_id int primary key not null,
	slug varchar(200),
    url text
    );
select * from genre

-- Table 3
create table game_genre(
	game_id int not null,
	genre int,
	foreign key game_id references primaryv1(id),
	foreign key genre references genre(genre_id)
    );
select * from genre



-- Table 4
create table theme(
	theme_id int primary key not null,
	slug varchar(200),
    url text
    );
select * from theme

-- Table 5
create table game_theme(
	game_id int not null,
	theme int,
	foreign key game_id references primaryv1(id),
	foreign key theme references theme(theme_id)
    );
select * from game_theme




-- Table 6
create table game_mode(
	id int primary key not null,
	slug varchar(200),
    url text
    );
select * from game_mode

-- Table 7
create table game_game_mode(
	game_id int not null,
	game_mode int, 
	foreign key game_id references primaryv1(id),
	foreign key game_mode references game_mode(id)
    );
select * from game_game_mode


-- Table 8
create table franchise(
	franchise_id int primary key not null,
	slug varchar(200), 
	url text
);

select * from franchise;

-- Table 9
create table game_franchise(
	game_id int not null,
	franchise int,
	foreign key game_id references primaryv1(id),
	foreign key franchise references franchise(franchise_id)
);

select * from game_franchise;
-- Table 10
create table artwork(
	game_id int not null,	
	url text,
	foreign key game_id references primaryv1(id)
);
select * from artwork;

-- Table 11
create table similar_game(
	similar_id int,
	game_id int not null,
	foreign key game_id references primaryv1(id)
);

select * from similar_game;



-- Table 12
create table age_description(
	description_id int primary key not null,
    description varchar(200)
);

select * from age_description;

-- Table 13
create table age_rating(
	game_id int not null,
    age_rating int,
	foreign key game_id references primaryv1(id),
	foreign key age_rating references age_description(description_id)

);

select * from age_rating;



	