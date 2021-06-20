create table publisher(
id integer primary key,
name text,
country text
);

create table books(
id integer primary key,
title text,
publisher integer references publisher(id) --foreign key
);

create table subjects(
id integer primary key,
name text
);

create table books_subjects(
book integer,
subject integer,
CONSTRAINT fk_departments
    FOREIGN KEY (book) REFERENCES books(id),
    FOREIGN KEY (subject) REFERENCES subjects(id)
);
