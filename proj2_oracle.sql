-- This file is for the recursion portion of the assignment. It is adapted to work with Oracle SQL
-- Use proj1.sql file for data aggregation

DROP TABLE Flight;
DROP TABLE Crew;
DROP TABLE Assign;

 -- CREATE TABLE statements go here

INSERT ALL 
  INTO Flight VALUES (101,'Montreal', 'NY', 0530, 0645, 180) 
  INTO Flight VALUES (102, 'Montreal', 'Washington', 0100, 0235, 100) 
  INTO Flight VALUES (103, 'NY', 'Chicago', 0800, 1000, 150) 
  INTO Flight VALUES (105, 'Washington', 'Kansas-City', 0600, 0845, 200) 
  INTO Flight VALUES (106, 'Washington', 'NY', 1200, 1330, 50) 
  INTO Flight VALUES (107, 'Chicago', 'SLC', 1100, 1430, 220) 
  INTO Flight VALUES (110, 'Kansas-City', 'Denver', 1400, 1525, 180) 
  INTO Flight VALUES (111, 'Kansas-City', 'SLC', 1300, 1530, 200) 
  INTO Flight VALUES (112, 'SLC', 'SanFran', 1800, 1930, 85) 
  INTO Flight VALUES (113, 'SLC', 'LA', 1730, 1900, 185) 
  INTO Flight VALUES (115, 'Denver', 'SLC', 1500, 1600, 75) 
  INTO Flight VALUES (116, 'SanFran', 'LA', 2200, 2230, 50) 
  INTO Flight VALUES (118, 'LA', 'Seattle', 2000, 2100, 150)
SELECT 1 FROM DUAL;
 
INSERT ALL
  INTO Crew VALUES (01, 'John Smith', 500000, 'Pilot', 15, 3000, Null)
  INTO Crew VALUES (02, 'Rob Anderson', 400000, 'Pilot', 12, 2700, 01)
  INTO Crew VALUES (03, 'Bill Talbot', 300000, 'Pilot', 12, 2500, 01)
  INTO Crew VALUES (11, 'Steve Lowe', 250000, 'Co-pilot', 10, 2000, 02)
  INTO Crew VALUES (12, 'John Crowe', 200000, 'Co-pilot', 9, 800, 03)
  INTO Crew VALUES (13, 'Mike York', 150000, 'Co-Pilot', 8, 650, 02)
  INTO Crew VALUES (21, 'Sam Carson', 100000, 'Engineer', 12, 2400, 11)
  INTO Crew VALUES (22, 'Joe Young', 180000, 'Chief Engg', 9, 0, 11)
  INTO Crew VALUES (10, 'Dave Empire', 80000, 'Engineer', 2, 300, 22)
  INTO Crew VALUES (30, 'Dee Brown', 70000, 'Engineer', 13, 1050, 22)
SELECT 1 FROM DUAL;

INSERT ALL
  INTO Assign VALUES (01, 101)
  INTO Assign VALUES (02, 102)
  INTO Assign VALUES (03, 106)
  INTO Assign VALUES (02, 105)
  INTO Assign VALUES (11, 103)
  INTO Assign VALUES (13, 107)
  INTO Assign VALUES (11, 110)
  INTO Assign VALUES (21, 111)
  INTO Assign VALUES (03, 112)
  INTO Assign VALUES (21, 112)
  INTO Assign VALUES (10, 113)
  INTO Assign VALUES (01, 116)
  INTO Assign VALUES (30, 116)
  INTO Assign VALUES (02, 118)
  INTO Assign VALUES (30, 118)
SELECT 1 FROM DUAL;