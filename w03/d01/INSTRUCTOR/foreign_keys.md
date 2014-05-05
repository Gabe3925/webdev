# Foreign Keys

**One-to-many**:

```
CREATE TABLE courses (
  id serial PRIMARY KEY,
  course_title varchar(300) NOT NULL,
  number_of_weeks integer NOT NULL
);

CREATE TABLE students (
  id serial PRIMARY KEY,
  class_id integer REFERENCES students (id) NOT NULL,
  email varchar(300) UNIQUE NOT NULL,
  first_name varchar(100) NOT NULL,
  middle_name varchar(100) DEFAULT '',
  last_name varchar(100) NOT NULL
);
```

**Many-to-many**:

```
CREATE TABLE courses (
  id serial PRIMARY KEY,
  course_title varchar(300) NOT NULL
);

CREATE TABLE students (
  id serial PRIMARY KEY,
  class_id integer REFERENCES students (id) NOT NULL,
  email varchar(300) UNIQUE NOT NULL
);

CREATE TABLE rel_students_courses (
  id serial PRIMARY KEY,
  student_id integer REFERENCES students (id) NOT NULL,
  course_id integer REFERENCES courses (id) NOT NULL
);
```