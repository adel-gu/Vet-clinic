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
    age INT,
    PRIMARY KEY (id)
);

-- [X] Create a table named species:
CREATE TABLE species(
    id INT NOT NULL GENERATED ALWAYS AS IDENTITY,
    name VARCHAR(100),
    PRIMARY KEY (id)
);

-- Modify animals table:
-- [X] Make sure that id is set as autoincremented PRIMARY KEY
ALTER TABLE animals
    ADD PRIMARY KEY (id);

-- [X] Remove column species
ALTER TABLE animals
    DROP COLUMN species;

-- [X] add both species_id and owner_id to the animals.
ALTER TABLE animals
    ADD COLUMN species_id INT,
    ADD COLUMN owner_id INT,

-- [X] Add column species_id which is a foreign key referencing species table
ALTER TABLE animals
    ADD CONSTRAINT fk_species
    FOREIGN KEY (species_id)
    REFERENCES species(id);

-- [X] Add column owner_id which is a foreign key referencing the owners table
ALTER TABLE animals
    ADD CONSTRAINT fk_owner
    FOREIGN KEY (owner_id)
    REFERENCES owners(id);

-- [x] Create a table named vets with the following columns:
CREATE TABLE vets (
    id INT NOT NULL GENERATED ALWAYS AS IDENTITY,
    name VARCHAR(150),
    age INT,
    date_of_graduation DATE,
    PRIMARY KEY (id)
);

-- [X] There is a many-to-many relationship between the tables species and vets: a vet can specialize in multiple species, and a species can have multiple vets specialized in it. Create a "join table" called specializations to handle this relationship.
CREATE TABLE specializations (
    vet_id INT,
    species_id INT,
    PRIMARY KEY (vet_id, species_id),
    CONSTRAINT fk_vets
        FOREIGN KEY (vet_id)
            REFERENCES vets(id),
    CONSTRAINT fk_species
        FOREIGN KEY (species_id)
            REFERENCES  species(id)
);

-- [X] There is a many-to-many relationship between the tables animals and vets: an animal can visit multiple vets and one vet can be visited by multiple animals. Create a "join table" called visits to handle this relationship, it should also keep track of the date of the visit.
CREATE TABLE visits(
    vet_id INT,
    animal_id INT,
    date_of_visit DATE,
    PRIMARY KEY (vet_id, animal_id),
    CONSTRAINT fk_vets
        FOREIGN KEY (vet_id)
            REFERENCES vets(id),
    CONSTRAINT fk_animals
        FOREIGN KEY (animal_id)
            REFERENCES animals(id)
);

-- [X] Add an email column to your owners table
ALTER TABLE owners ADD COLUMN email VARCHAR(120);

-- [X] Drop visits table
DROP TABLE visits;

-- [X] Create visits table
CREATE TABLE visits(
  id INT GENERATED ALWAYS AS IDENTITY,
  animal_id INT REFERENCES animals(id),
  vet_id INT REFERENCES vets(id),
  date_of_visit DATE,
  PRIMARY KEY(id)
);

