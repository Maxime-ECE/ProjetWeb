create table students
(
    id SERIAL PRIMARY KEY,
    first_name TEXT not null,
    last_name TEXT not null,
    birthdate date null,
    major_id int null,
    image bytea null
);

create table majors
(
    id SERIAL PRIMARY KEY,
    name TEXT not null,
    description TEXT not null
);

create table courses
(
    id SERIAL PRIMARY KEY,
    name TEXT not null,
    hours int not null
);

create table student_course
(
    id SERIAL PRIMARY KEY,
    student_id int not null,
    course_id int not null
);

create table users
(
    id SERIAL PRIMARY KEY,

    nom varchar not null,
    roles varchar not null,
    prenom varchar not null
);


CREATE TABLE questions (
                           id SERIAL PRIMARY KEY,

                           question VARCHAR NOT NULL,
                           reponse VARCHAR NOT NULL
);

CREATE TABLE quizz (
                       id SERIAL PRIMARY KEY,
                       titre varchar NOT NULL,
                       q1 INT NOT NULL REFERENCES questions(id),
                       q2 INT NOT NULL REFERENCES questions(id),
                       q3 INT NOT NULL REFERENCES questions(id),
                       q4 INT NOT NULL REFERENCES questions(id),
                       q5 INT NOT NULL REFERENCES questions(id),
                       q6 INT NOT NULL REFERENCES questions(id),
                       q7 INT NOT NULL REFERENCES questions(id),
                       q8 INT NOT NULL REFERENCES questions(id),
                       q9 INT NOT NULL REFERENCES questions(id),
                       q10 INT NOT NULL REFERENCES questions(id)
);

