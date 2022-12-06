/* Populate database with sample data. */

INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg)
VALUES ('Agumon', 'Feb 03,2020', 0, true, 10.23);

INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg)
VALUES ('Gabumon', 'Nov 15, 2018', 2, true, 8);

INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg)
VALUES ('Pikachu', 'Jan 07, 2021', 1, false, 15.04);

INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg)
VALUES ('Devimon', 'May 12, 2017', 5, true, 11);

INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg)
VALUES ('Charmander', 'Feb 08, 2020', 0, false, -11);

INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg)
VALUES ('Plantmon', 'Nov 15, 2021', 2, true, -5.7);

INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg)
VALUES ('Squirtle', 'Apr 02, 1993', 3, false, -12.13);

INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg)
VALUES ('Angemon', 'Jun 12, 2005', 1, true, -45);

INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg)
VALUES ('Boarmon', 'Jun 07, 2005', 7, true, 20.4);

INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg)
VALUES ('Blossom', 'Oct 13, 1998', 3, true, 17);

INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg)
VALUES ('Ditto', 'May 14, 2022', 4, true, 22);

-- Insert the following data into the owners table:
-- [X] Sam Smith 34 years old.
INSERT INTO owners (full_name, age)
VALUES ('Sam Smith', 34);

-- [X] Jennifer Orwell 19 years old.
INSERT INTO owners (full_name, age)
VALUES ('Jennifer Orwell', 19);

-- [X] Bob 45 years old.
INSERT INTO owners (full_name, age)
VALUES ('Bob', 45);

-- [X] Melody Pond 77 years old.
INSERT INTO owners (full_name, age)
VALUES ('Melody Pond', 77);

-- [X] Dean Winchester 14 years old.
INSERT INTO owners (full_name, age)
VALUES ('Dean Winchester', 14);

-- [X] Jodie Whittaker 38 years old.
INSERT INTO owners (full_name, age)
VALUES ('Jodie Whittaker', 38);

-- Insert the following data into the species table:
-- [X] Pokemon
INSERT INTO species (name)
VALUES ('Pokemon');

-- [X] Digimon
INSERT INTO species (name)
VALUES ('Digimon');