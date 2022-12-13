-- 1) [X] Create patients table.
CREATE TABLE patients(
  id INT NOT NULL GENERATED ALWAYS AS IDENTITY,
  name VARCHAR(100),
  date_of_birth DATE,
  PRIMARY KEY (id)
);

-- 2) [] Create medical_histories table.
CREATE TABLE medical_histories(
  id INT NOT NULL GENERATED ALWAYS AS IDENTITY,
  admitted_at TIMESTAMP,
  patient_id INT,
  status VARCHAR(150),
  PRIMARY KEY (id),
  CONSTRAINT fk_patients
    FOREIGN KEY (patient_id)
      REFERENCES patients(id)
);

-- 3) [] Create invoices table.


-- 4) [] Create treatments table.


-- 5) [] Create invoices_items table.


-- 6) [] Create (join-table between medical_histories and treatments) medical_treatments table.

