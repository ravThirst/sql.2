create table if not exists Artist(
id serial primary key,
name varchar(40) not null
);

create table if not exists Genre(
id serial primary key,
name varchar(40) not null
);

create table if not exists Album(
id serial primary key,
name varchar(40) not null,
release_year smallint not null
);

create table if not exists Collection(
id serial primary key,
name varchar(40) not null,
release_year smallint not null
);

create table if not exists Track(
id serial primary key,
name varchar(40) not null,
duration integer not null,
album_id integer not null references Album(id)
);

create table if not exists ArtistGenre(
artist_id integer not null references Artist(id),
genre_id integer not null references Genre(id)
);

create table if not exists ArtistAlbum(
artist_id integer not null references Artist(id),
album_id integer not null references Album(id)
);

create table if not exists CollectionTrack(
collection_id integer not null references Collection(id),
track_id integer not null references Track(id)
);