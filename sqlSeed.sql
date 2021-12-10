CREATE TABLE animals(
  animal_id SERIAL PRIMARY KEY,
  animal_name VARCHAR(47),
  animal_age INT,
  animal_type VARCHAR(47),
  does_well_with_other_pets BOOLEAN DEFAULT false
);

CREATE TABLE animal_species(
species_id SERIAL PRIMARY KEY,
animal_type VARCHAR(47) NOT NULL REFERENCES animals(animal_type),
animal_breed_ VARCHAR(47)
);

CREATE TABLE owners (
owner_id SERIAL PRIMARY KEY,
owner_name VARCHAR(94),
wants_animal INT NOT NULL REFERENCES animals(animal_id),
has_other_pets BOOLEAN DEFAULT false
);
CREATE TABLE potential_matches (
potential_matches_id SERIAL PRIMARY KEY,
owner_multiple_pets BOOLEAN NOT NULL REFERENCES owners(has_other_pets),
animal_social_preference BOOLEAN NOT NULL REFERENCES animals(does_well_with_other_pets)
);