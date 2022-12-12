-- Create CompanyDB database:
  -- In terminal:
    -- createdb "CompanyBD"

-- Create the table Employees with the following columns:
CREATE TABLE "Employees" (
  "FullName" TEXT NOT NULL,
  "Salary" INT,
  "JobPosition" TEXT,
  "PhoneExtension" INT,
  "IsPartTime" BOOL
);

INSERT INTO "Employees"("FullName", "Salary", "JobPosition", "PhoneExtension", "IsPartTime")
VALUES ('Milagro Torres', '100000', 'Full Stack Developer', '125', False);
INSERT INTO "Employees"("FullName", "Salary", "JobPosition", "PhoneExtension", "IsPartTime")
VALUES ('Mary Lazo', '100000', 'Landscape Designer', '323', False);
INSERT INTO "Employees"("FullName", "Salary", "JobPosition", "PhoneExtension", "IsPartTime")
VALUES ('Vincent Johnson', '120000', 'Project Manager', '243', False);
INSERT INTO "Employees"("FullName", "Salary", "JobPosition", "PhoneExtension", "IsPartTime")
VALUES ('Charles Lee', '300000', 'Administrative Assistant', '400', True);
INSERT INTO "Employees"("FullName", "Salary", "JobPosition", "PhoneExtension", "IsPartTime")
VALUES ('Jose Torres', '300000', 'Security and Safety Officer', '431', False);
INSERT INTO "Employees"("FullName", "Salary", "JobPosition", "PhoneExtension", "IsPartTime")
VALUES ('Frank Martini', '1000000', 'Chief Information Officer', '220', False);
INSERT INTO "Employees"("FullName", "Salary", "JobPosition", "PhoneExtension", "IsPartTime")
VALUES ('James Lance', '45000', 'Software Developer', '301', True);
INSERT INTO "Employees"("FullName", "Salary", "JobPosition", "PhoneExtension", "IsPartTime")
VALUES ('Mark Christopher', '150000', 'Engineer', '346', True);
INSERT INTO "Employees"("FullName", "Salary", "JobPosition", "PhoneExtension", "IsPartTime")
VALUES ('Salvatore Panini', '100000', 'Business Operations Manager', '335', False);
INSERT INTO "Employees"("FullName", "Salary", "JobPosition", "PhoneExtension", "IsPartTime")
VALUES ('Silvia Tetron', '500000', 'Lead Designer and Sketch Artist', '525', False);
INSERT INTO "Employees"("FullName", "Salary", "JobPosition", "PhoneExtension", "IsPartTime")
VALUES ('John Smith', '200000', 'Lead Tech', '545', False);

SELECT * FROM "Employees";

SELECT "FullName", "PhoneExtension" FROM "Employees" WHERE "IsPartTime" = True;

INSERT INTO "Employees"("FullName", "Salary", "JobPosition", "PhoneExtension", "IsPartTime")
VALUES ('Chris Ramsay', '450', 'Software Developer', '311', True);

-- Adding a cook employee since I did not have any cooks:

INSERT INTO "Employees"("FullName", "Salary", "JobPosition", "PhoneExtension", "IsPartTime")
VALUES('Gordon Ramsay', '450', 'Cook', '12301', True);


-- Updating Salary:
UPDATE "Employees" SET "Salary" = '500' WHERE "FullName" = 'Gordon Ramsay';

-- Create a Lazy Larry employee
INSERT INTO "Employees"("FullName", "Salary", "JobPosition", "PhoneExtension", "IsPartTime")
VALUES('Lazy Larry', '300', 'Cook', '121', True);
-- Then 
-- Delete all employees that have the full name of "Lazy Larry".
DELETE FROM "Employees" WHERE "FullName" = 'Lazy Larry';

ALTER TABLE "Employees" ADD COLUMN "ParkingSpot" VARCHAR(10); 