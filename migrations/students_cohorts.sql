CREATE TABLE cohorts (
  id SERIAL PRIMARY KEY NOT NULL,
  name VARCHAR(255) NOT NULL,
  start_date DATE,
  end_date DATE
);

CREATE TABLE students (
  id SERIAL PRIMARY KEY NOT NULL,
  name VARCHAR(255) NOT NULL,
  email VARCHAR(255),
  phone VARCHAR(32),
  github VARCHAR(255),
  start_date DATE,
  end_date DATE,
  -- cohort_id INTEGER: declares a column
  -- REFERENCES cohorts(id): specifies that cohort_id is a foreign key referencing the 'id' column in the 'cohorts' table
  -- ON DELETE CASCADE: if a row in cohorts is deleted, then all rows in students with the same cohort_id will be automatically deleted
  cohort_id INTEGER REFERENCES cohorts(id) ON DELETE CASCADE
);