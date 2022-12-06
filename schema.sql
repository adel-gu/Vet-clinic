/* Database schema to keep the structure of entire database. */

CREATE TABLE animals (
    id INT NOT NULL GENERATED ALWAYS AS IDENTITY,
    name VARCHAR(150),
    date_of_birth DATE,
    escape_attempts INT,
    neutered BOOLEAN,
    weight_kg DECIMAL
);

-- [X] Add a column species of type string to your animals table. Modify your schema.sql file
ALTER TABLE animals
    ADD COLUMN species VARCHAR(250);

-- [X] Create a table named owners
CREATE TABLE owners(
    id INT NOT NULL GENERATED ALWAYS AS IDENTITY,
    full_name VARCHAR(150),
    age INT
);

-- [X] Create a table named species with the following columns:
CREATE TABLE species(
    id INT NOT NULL GENERATED ALWAYS AS IDENTITY,
    name VARCHAR(100)
);

-- Modify animals table:
-- [X] Make sure that id is set as autoincremented PRIMARY KEY
-- [X] Remove column species
ALTER TABLE animals
    DROP COLUMN species;
-- [] Add column species_id which is a foreign key referencing species table
-- [] Add column owner_id which is a foreign key referencing the owners table