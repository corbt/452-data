-- This file is for the recursion portion of the assignment
-- Use proj1.sql file for data aggregation

-- \c p2 -- This line will switch to database p2 in Postgres
-- SET client_min_messages TO WARNING; -- This line will disable notices in Postgres

DROP TABLE IF EXISTS Flight;
DROP TABLE IF EXISTS Crew;
DROP TABLE IF EXISTS Assign;

-- CREATE TABLE statements here

INSERT INTO Flight (Flight_Num, Source_City, Dest_City, Dep_Time, Arr_Time, Airfare) VALUES
(101, 'Montreal', 'NY', '0530', '0645', 180), 
(102, 'Montreal', 'Washington', '0100', '0235', 100), 
(103, 'NY', 'Chicago', '0800', '1000', 150), 
(105, 'Washington', 'Kansas-City', '0600', '0845', 200), 
(106, 'Washington', 'NY', '1200', '1330', 50), 
(107, 'Chicago', 'SLC', '1100', '1430', 220), 
(110, 'Kansas-City', 'Denver', '1400', '1525', 180), 
(111, 'Kansas-City', 'SLC', '1300', '1530', 200), 
(112, 'SLC', 'SanFran', '1800', '1930', 85), 
(113, 'SLC', 'LA', '1730', '1900', 185), 
(115, 'Denver', 'SLC', '1500', '1600', 75), 
(116, 'SanFran', 'LA', '2200', '2230', 50), 
(118, 'LA', 'Seattle', '2000', '2100', 150);
 
INSERT INTO Crew (Id, Name, Salary, Position, Seniority, Fly_Hours, Mgrid) VALUES
  (01, 'John Smith', 500000, 'Pilot', 15, 3000, Null),
  (02, 'Rob Anderson', 400000, 'Pilot', 12, 2700, 01),
  (03, 'Bill Talbot', 300000, 'Pilot', 12, 2500, 01),
  (11, 'Steve Lowe', 250000, 'Co-pilot', 10, 2000, 02),
  (12, 'John Crowe', 200000, 'Co-pilot', 9, 800, 03),
  (13, 'Mike York', 150000, 'Co-Pilot', 8, 650, 02),
  (21, 'Sam Carson', 100000, 'Engineer', 12, 2400, 11),
  (22, 'Joe Young', 180000, 'Chief Engg', 9, 0, 11),
  (10, 'Dave Empire', 80000, 'Engineer', 2, 300, 22),
  (30, 'Dee Brown', 70000, 'Engineer', 13, 1050, 22);

INSERT INTO Assign (Id, Flight_Num) VALUES
  (01, 101),
  (02, 102),
  (03, 106),
  (02, 105),
  (11, 103),
  (13, 107),
  (11, 110),
  (21, 111),
  (03, 112),
  (21, 112),
  (10, 113),
  (01, 116),
  (30, 116),
  (02, 118),
  (30, 118);