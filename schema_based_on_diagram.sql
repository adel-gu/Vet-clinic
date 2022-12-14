-- 1) [X] Create patients table.
CREATE TABLE patients(
  id INT NOT NULL GENERATED ALWAYS AS IDENTITY,
  name VARCHAR(100),
  date_of_birth DATE,
  PRIMARY KEY (id)
);

-- 2) [X] Create medical_histories table.
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

-- 3) [X] Create invoices table.
CREATE TABLE invoices(
  id INT NOT NULL GENERATED ALWAYS AS IDENTITY,
  total_amount DECIMAL,
  generated_at TIMESTAMP,
  payed_at TIMESTAMP,
  medical_history_id INT,
  PRIMARY KEY (id),
  CONSTRAINT fk_medical_histories
    FOREIGN KEY (medical_history_id)
      REFERENCES medical_histories(id)
);

-- 4) [X] Create treatments table.
CREATE TABLE treatments(
  id INT NOT NULL GENERATED ALWAYS AS IDENTITY,
  type VARCHAR(50),
  name VARCHAR(100),
  PRIMARY KEY (id)
);


-- 5) [X] Create invoices_items table.
CREATE TABLE invoices_items(
  id INT NOT NULL GENERATED ALWAYS AS IDENTITY,
  unit_price DECIMAL,
  quantity INT,
  total_price DECIMAL,
  invoiced_id INT,
  treatment_id INT,
  PRIMARY KEY (id),
  CONSTRAINT fk_invoices
    FOREIGN KEY (invoiced_id)
      REFERENCES invoices(id),
  CONSTRAINT fk_treatments
    FOREIGN KEY (treatment_id)
      REFERENCES treatments(id)
);



