create database covid_analysis;
use covid_analysis;

CREATE TABLE covid_states (
    state_id INT PRIMARY KEY,
    state_name VARCHAR(255)
);

INSERT INTO covid_states (state_id, state_name) VALUES
(1, 'Andhra Pradesh'),
(2, 'Arunachal Pradesh'),
(3, 'Assam'),
(4, 'Bihar'),
(5,'Chhattisgarh '),
(6, 'Goa'),
(7,' Gujarat'),
(8, 'Haryana'),
(9, 'Himachal Pradesh'),
(10, 'Jharkhand'),
(11,'Karnataka'),
(12,'Maharashtra');

select * from covid_states;

CREATE TABLE covid_districts (
    district_id INT PRIMARY KEY,
    district_name VARCHAR(255),
    state_id INT,
    FOREIGN KEY (state_id) REFERENCES covid_states(state_id)
);

INSERT INTO covid_districts (district_id, district_name, state_id) VALUES
(1, 'Krishna district', 1),
(2, 'Tawang district', 2),
(3, ' Kamrup Metropolitan district', 3),
(4, 'Patna district', 4),
(5, 'Raipur district', 5),
(6, ' North Goa district', 6),
(7, 'Ahmedabad district', 7),
(8, 'Gurgaon district', 8),
(9, 'Kangra district', 9),
(10, 'Ranchi district', 10),
(11, 'Bangalore Urban district', 11),
(12, ' Ernakulam district', 12);

select * from covid_districts;

CREATE TABLE covid_cases_india (
    case_id INT PRIMARY KEY,
    date_reported DATE,
    confirmed_cases INT,
    deaths INT,
    recovered INT,
    district_id INT,
    FOREIGN KEY (district_id) REFERENCES covid_districts(district_id)
);

-- Insert 12 records into the covid_cases_india table
INSERT INTO covid_cases_india (case_id, date_reported, confirmed_cases, deaths, recovered, district_id) VALUES
(1, '2023-10-01', 100, 5, 90, 1),
(2, '2023-10-01', 50, 2, 48, 2),
(3, '2023-10-02', 120, 6, 114, 3),
(4, '2023-10-02', 70, 3, 66, 4),
(5, '2023-10-03', 90, 4, 84, 5),
(6, '2023-10-03', 60, 3, 57, 6),
(7, '2023-10-04', 110, 5, 105, 7),
(8, '2023-10-04', 45, 2, 43, 8),
(9, '2023-10-05', 80, 4, 76, 9),
(10, '2023-10-05', 70, 3, 67, 10),
(11, '2023-10-06', 130, 6, 124, 11),
(12, '2023-10-06', 75, 3, 72, 12);

select * from covid_cases_india;


CREATE TABLE covid_testing_india (
    test_id INT PRIMARY KEY,
    date_tested DATE,
    total_tests INT,
    positive_tests INT,
    negative_tests INT,
    district_id INT,
    FOREIGN KEY (district_id) REFERENCES covid_districts(district_id)
);

-- Insert 12 records into the covid_testing_india table
INSERT INTO covid_testing_india (test_id, date_tested, total_tests, positive_tests, negative_tests, district_id) VALUES
(1, '2023-10-01', 1000, 100, 900, 1),
(2, '2023-10-01', 750, 50, 700, 2),
(3, '2023-10-02', 1100, 90, 1010, 3),
(4, '2023-10-02', 800, 70, 730, 4),
(5, '2023-10-03', 1200, 120, 1080, 5),
(6, '2023-10-03', 600, 40, 560, 6),
(7, '2023-10-04', 1300, 110, 1190, 7),
(8, '2023-10-04', 950, 85, 865, 8),
(9, '2023-10-05', 1400, 140, 1260, 9),
(10, '2023-10-05', 1050, 95, 955, 10),
(11, '2023-10-06', 1600, 160, 1440, 11),
(12, '2023-10-06', 1350, 120, 1230, 12);

select * from covid_testing_india;

CREATE TABLE covid_vaccination_india (
    vaccination_id INT PRIMARY KEY,
    date_vaccinated DATE,
    total_vaccinations INT,
    first_dose INT,
    second_dose INT,
    district_id INT,
    FOREIGN KEY (district_id) REFERENCES covid_districts(district_id)
);

-- Insert 12 records into the covid_vaccination_india table
INSERT INTO covid_vaccination_india (vaccination_id, date_vaccinated, total_vaccinations, first_dose, second_dose, district_id) VALUES
(1, '2023-10-01', 5000, 2500, 2500, 1),
(2, '2023-10-01', 3200, 1600, 1600, 2),
(3, '2023-10-02', 5400, 2700, 2700, 3),
(4, '2023-10-02', 4100, 2050, 2050, 4),
(5, '2023-10-03', 6300, 3150, 3150, 5),
(6, '2023-10-03', 2900, 1450, 1450, 6),
(7, '2023-10-04', 7200, 3600, 3600, 7),
(8, '2023-10-04', 4800, 2400, 2400, 8),
(9, '2023-10-05', 8100, 4050, 4050, 9),
(10, '2023-10-05', 6900, 3450, 3450, 10),
(11, '2023-10-06', 9400, 4700, 4700, 11),
(12, '2023-10-06', 7600, 3800, 3800, 12);

select * from covid_vaccination_india;

CREATE TABLE covid_hospitalizations_india (
    hospitalization_id INT PRIMARY KEY,
    date_admitted DATE,
    total_hospitalized INT,
    icu_cases INT,
    district_id INT,
    FOREIGN KEY (district_id) REFERENCES covid_districts(district_id)
);

-- Insert 12 records into the covid_hospitalizations_india table
INSERT INTO covid_hospitalizations_india (hospitalization_id, date_admitted, total_hospitalized, icu_cases, district_id) VALUES
(1, '2023-10-01', 200, 30, 1),
(2, '2023-10-01', 150, 20, 2),
(3, '2023-10-02', 300, 50, 3),
(4, '2023-10-02', 250, 40, 4),
(5, '2023-10-03', 400, 70, 5),
(6, '2023-10-03', 180, 25, 6),
(7, '2023-10-04', 500, 80, 7),
(8, '2023-10-04', 350, 60, 8),
(9, '2023-10-05', 600, 100, 9),
(10, '2023-10-05', 550, 90, 10),
(11, '2023-10-06', 700, 120, 11),
(12, '2023-10-06', 450, 75, 12);

select * from covid_hospitalizations_india;

CREATE TABLE covid_demographics_india (
    demographic_id INT PRIMARY KEY,
    case_id INT,
    age INT,
    gender VARCHAR(20)
);

-- Insert data for COVID-19 demographics in India
INSERT INTO covid_demographics_india (demographic_id, case_id, age, gender)
VALUES
    (1, 1, 35, 'Male'),
    (2, 2, 42, 'Female'),
    (3, 3, 28, 'Male'),
    (4, 4, 50, 'Female'),
    (5, 5, 22, 'Male'),
    (6, 6, 62, 'Male'),
    (7, 7, 33, 'Female'),
    (8, 8, 45, 'Male'),
    (9, 9, 37, 'Female'),
    (10, 10, 29, 'Male'),
    (11, 11, 49, 'Male'),
    (12, 12, 51, 'Female'),
    (13, 13, 31, 'Male'),
    (14, 14, 58, 'Female'),
    (15, 15, 26, 'Male'),
    (16, 16, 67, 'Male'),
    (17, 17, 30, 'Female'),
    (18, 18, 43, 'Male'),
    (19, 19, 36, 'Female'),
    (20, 20, 47, 'Male');
select * from covid_demographics_india;

desc covid_cases_india; 

 desc covid_testing_india;
 
 desc covid_vaccination_india;
 
 desc covid_hospitalizations_india;
 
 desc covid_demographics_india;
 
 desc covid_states;
 
desc covid_districts; 

  Alter table add column:
  ALTER TABLE covid_testing_india
ADD test_result VARCHAR(50);
desc covid_testing_india;

ALTER TABLE covid_cases_india
modify recovered  BIGINT;
desc covid_cases_india;

ALTER TABLE covid_demographics_india
RENAME TO covid_demographics;
select * from covid_demographics;

ALTER TABLE covid_hospitalizations_india
DROP COLUMN icu_cases;
desc covid_hospitalizations_india;

ALTER TABLE covid_demographics
 change age  new_age varchar(50);
 desc covid_demographics;
 
 TRUNCATE TABLE covid_demographics;
 select * from  covid_demographics;
 
 
drop table covid_demographics;

INSERT INTO covid_cases_india (case_id, date_reported, confirmed_cases, 
deaths, recovered, district_id)
VALUES (15, '2023-01-01', 100, 5, 90, 1),
       (16, '2023-01-02', 120, 6, 100, 2);
select * from covid_cases_india;

UPDATE covid_cases_india
SET confirmed_cases = 150, deaths = 7
WHERE case_id = 1;
select * from covid_cases_india;

DELETE FROM covid_vaccination_india
WHERE vaccination_id = 2;
select * from covid_vaccination_india;

SELECT * FROM covid_cases_india;

 Order by query ASC.
 SELECT * FROM covid_cases_india
ORDER BY date_reported ASC;

SELECT * FROM covid_cases_india
ORDER BY date_reported DESC;

SELECT * FROM covid_testing_india
ORDER BY total_tests;

SELECT * FROM covid_vaccination_india
LIMIT 10;

SELECT case_id, confirmed_cases FROM covid_cases_india;

SELECT demographic_id, age AS person_age, gender FROM covid_demographics_india;

SELECT DISTINCT state_name FROM covid_states;

SELECT * FROM covid_testing_india
WHERE total_tests BETWEEN 1000 AND 2000;

SELECT * FROM covid_cases_india
WHERE confirmed_cases < 100;

SELECT * FROM covid_demographics_india
WHERE age IN (30, 40);

SELECT * FROM covid_cases_india
WHERE confirmed_cases > 100 AND deaths < 50;

SELECT * FROM covid_testing_india
WHERE positive_tests > 1000 OR (total_tests BETWEEN 500 AND 1000);

SELECT * FROM covid_vaccination_india
WHERE date_vaccinated BETWEEN '2023-10-01' AND '2023-10-05';

SELECT * FROM covid_demographics_india
WHERE age IN (30, 40, 50);

SELECT COUNT(*) FROM covid_cases_india;



SELECT AVG(total_tests) FROM covid_testing_india;



SELECT SUM(confirmed_cases) FROM covid_cases_india;

SELECT age, gender, AVG(age) as avg_age
FROM covid_demographics_india
GROUP BY age, gender;

SELECT date_vaccinated, SUM(total_vaccinations) as total_vaccinations
FROM covid_vaccination_india
GROUP BY date_vaccinated;

SELECT district_id, AVG(total_tests) as avg_tests
FROM covid_testing_india
GROUP BY district_id;

SELECT * FROM covid_districts
WHERE district_name LIKE 'b%';

SELECT * FROM covid_cases_india
WHERE date_reported LIKE '2023-10%';

-- Combine COVID-19 vaccination and hospitalization data
SELECT vaccination_id, date_vaccinated, total_vaccinations, first_dose, second_dose, NULL, district_id
FROM covid_vaccination_india
UNION
SELECT hospitalization_id, date_hospitalized, total_hospitalized, icu_admissions, NULL, total_discharged, district_id
FROM covid_hospitalizations_india;




SELECT district_id, AVG(total_tests) as avg_tests
FROM covid_testing_india
GROUP BY district_id;


-- Combine COVID-19 cases and testing data
SELECT case_id, date_reported, confirmed_cases, deaths, recovered, district_id
FROM covid_cases_india
UNION
SELECT test_id, date_tested, total_tests, positive_tests, NULL, district_id
FROM covid_testing_india;

-- Combine COVID-19 cases and demographic data
SELECT case_id, date_reported, confirmed_cases, deaths, recovered, district_id
FROM covid_cases_india
UNION
SELECT demographic_id, NULL, NULL, NULL, NULL, NULL, gender
FROM covid_demographics_india;

-- Combine COVID-19 cases, testing, and hospitalization data
SELECT case_id, date_reported, confirmed_cases, deaths, recovered, district_id, NULL as total_tests, NULL as positive_tests, NULL as date_hospitalized, NULL as total_hospitalized
FROM covid_cases_india
UNION
SELECT NULL, NULL, NULL, NULL, NULL, district_id, total_tests, positive_tests, NULL, NULL
FROM covid_testing_india
UNION
SELECT NULL, NULL, NULL, NULL, NULL, district_id, NULL, NULL, total_hospitalized
FROM covid_hospitalizations_india;


-- Combine COVID-19 cases, testing, and vaccination data
SELECT case_id, date_reported, confirmed_cases, deaths, recovered, district_id, NULL as total_tests, NULL as positive_tests, NULL as date_vaccinated, NULL as total_vaccinations
FROM covid_cases_india
UNION
SELECT NULL, NULL, NULL, NULL, NULL, district_id, total_tests, positive_tests, NULL, NULL
FROM covid_testing_india
UNION
SELECT NULL, NULL, NULL, NULL, NULL, district_id, NULL, NULL, date_vaccinated, total_vaccinations
FROM covid_vaccination_india;

SELECT *
FROM covid_cases_india
INNER JOIN covid_testing_india ON 
covid_cases_india.district_id = covid_testing_india.district_id;

SELECT *
FROM covid_cases_india
LEFT JOIN covid_testing_india ON covid_cases_india.district_id = covid_testing_india.district_id;


SELECT *
FROM covid_cases_india
RIGHT JOIN covid_testing_india ON covid_cases_india.district_id = covid_testing_india.district_id;

SELECT *
FROM covid_cases_india
WHERE district_id IN (SELECT district_id FROM covid_cases_india WHERE confirmed_cases > 
(SELECT AVG(confirmed_cases) FROM covid_cases_india));

SELECT district_id, (SELECT SUM(confirmed_cases) FROM covid_cases_india WHERE
 district_id = covid_districts.district_id) as total_confirmed_cases
FROM covid_districts;

SELECT district_id, (SELECT MAX(date_tested) FROM covid_testing_india WHERE 
district_id = covid_districts.district_id) as latest_test_date
FROM covid_districts;

-- Create a view that combines COVID-19 data for a specific district
CREATE VIEW covid_data_for_district AS
SELECT c.district_id, c.date_reported, c.confirmed_cases, t.total_tests, t.positive_tests, d.age, d.gender
FROM covid_cases_india c
JOIN covid_testing_india t ON c.district_id = t.district_id
JOIN covid_demographics_india d ON c.district_id = d.district_id;

-- Create a view for COVID-19 cases and testing data for a specific district
CREATE VIEW covid_district_data AS
SELECT c.district_id, c.date_reported, c.confirmed_cases, t.total_tests, t.positive_tests
FROM covid_cases_india c
JOIN covid_testing_india t ON c.district_id = t.district_id;

SELECT * FROM covid_district_data WHERE district_id = 5;


-- Create a view for COVID-19 cases and vaccination data
CREATE VIEW covid_cases_vaccination AS
SELECT c.district_id, c.date_reported, c.confirmed_cases, v.date_vaccinated, v.total_vaccinations
FROM covid_cases_india c
JOIN covid_vaccination_india v ON c.district_id = v.district_id;

SELECT * FROM covid_cases_vaccination WHERE district_id = 12;


















