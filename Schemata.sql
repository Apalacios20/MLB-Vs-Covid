-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/gKCJcb
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

ALTER TABLE "Batting_2019"
RENAME TO Batting_2019;

CREATE TABLE "Batting_2019" (
    "id" SERIAL   NOT NULL,
    "RK" INT   NOT NULL,
    "Name" VARCHAR(50)   NOT NULL,
    "Team" VARCHAR(10)   NOT NULL,
    "POS" VARCHAR(10)   NOT NULL,
    "Games_Played" INT   NOT NULL,
    "At_Bats" INT   NOT NULL,
    "Runs" INT   NOT NULL,
    "Hits" INT   NOT NULL,
    "AVG" DECIMAL   NOT NULL,
    "2B" INT   NOT NULL,
    "3B" INT   NOT NULL,
    "Home_Runs" INT   NOT NULL,
    "Runs_Batted_In" INT   NOT NULL,
    "Total_Bases" INT   NOT NULL,
    "Walks" INT   NOT NULL,
    "Strikeouts" INT   NOT NULL,
    "Stolen_Bases" INT   NOT NULL,
    CONSTRAINT "pk_Batting_2019" PRIMARY KEY (
        "id"
     )
);
SELECT * FROM Batting_2019;



ALTER TABLE "Batting_2020"
RENAME TO Batting_2020;

CREATE TABLE "Batting_2020" (
    "id" SERIAL   NOT NULL,
    "RK" INT   NOT NULL,
    "Name" VARCHAR(50)   NOT NULL,
    "Team" VARCHAR(10)   NOT NULL,
    "POS" VARCHAR(10)   NOT NULL,
    "Games_Played" INT   NOT NULL,
    "At_Bats" INT   NOT NULL,
    "Runs" INT   NOT NULL,
    "Hits" INT   NOT NULL,
    "AVG" DECIMAL   NOT NULL,
    "2B" INT   NOT NULL,
    "3B" INT   NOT NULL,
    "Home_Runs" INT   NOT NULL,
    "Runs_Batted_In" INT   NOT NULL,
    "Total_Bases" INT   NOT NULL,
    "Walks" INT   NOT NULL,
    "Strikeouts" INT   NOT NULL,
    "Stolen_Bases" INT   NOT NULL,
    CONSTRAINT "pk_Batting_2020" PRIMARY KEY (
        "id"
     )
);
SELECT * FROM Batting_2020;



ALTER TABLE "Batting_2021"
RENAME TO Batting_2021;

CREATE TABLE "Batting_2021" (
    "id" SERIAL   NOT NULL,
    "RK" INT   NOT NULL,
    "Name" VARCHAR(50)   NOT NULL,
    "Team" VARCHAR(10)   NOT NULL,
    "POS" VARCHAR(10)   NOT NULL,
    "Games_Played" INT   NOT NULL,
    "At_Bats" INT   NOT NULL,
    "Runs" INT   NOT NULL,
    "Hits" INT   NOT NULL,
    "AVG" DECIMAL   NOT NULL,
    "2B" INT   NOT NULL,
    "3B" INT   NOT NULL,
    "Home_Runs" INT   NOT NULL,
    "Runs_Batted_In" INT   NOT NULL,
    "Total_Bases" INT   NOT NULL,
    "Walks" INT   NOT NULL,
    "Strikeouts" INT   NOT NULL,
    "Stolen_Bases" INT   NOT NULL,
    CONSTRAINT "pk_Batting_2021" PRIMARY KEY (
        "id"
     )
);
SELECT * FROM Batting_2021;


ALTER TABLE "Attendance_2019"
RENAME TO Attendance_2019;

CREATE TABLE "Attendance_2019" (
    "RK" INT   NOT NULL,
    "Team" VARCHAR(50)   NOT NULL,
    "ABR" VARCHAR(50)   NOT NULL,
    "Home_Games" INT   NOT NULL,
    "Home_Total" INT   NOT NULL,
    "Home_Avg" INT   NOT NULL,
    "Road_Games" INT   NOT NULL,
    "Road_Avg" INT   NOT NULL,
    "Overall_Games" INT   NOT NULL,
    "Overall_Avg" INT   NOT NULL,
    CONSTRAINT "pk_Attendance_2019" PRIMARY KEY (
        "Team"
     )
);
SELECT * FROM Attendance_2019;



ALTER TABLE "Attendance_2021"
RENAME TO Attendance_2021;

CREATE TABLE "Attendance_2021" (
    "RK" INT   NOT NULL,
    "Team" VARCHAR(50)   NOT NULL,
    "ABR" VARCHAR(50)   NOT NULL,
    "Home_Games" INT   NOT NULL,
    "Home_Total" INT   NOT NULL,
    "Home_Avg" INT   NOT NULL,
    "Road_Games" INT   NOT NULL,
    "Road_Avg" INT   NOT NULL,
    "Overall_Games" INT   NOT NULL,
    "Overall_Avg" INT   NOT NULL,
    CONSTRAINT "pk_Attendance_2021" PRIMARY KEY (
        "Team"
     )
);


ALTER TABLE "Payroll_2019"
RENAME TO Payroll_2019;

CREATE TABLE "Payroll_2019" (
    "RK" INT   NOT NULL,
    "Team" VARCHAR(50)   NOT NULL,
    "Roster" INT   NOT NULL,
    "Active" BIGSERIAL   NOT NULL,
    "Injured_Reserve" BIGSERIAL   NOT NULL,
    "Total" BIGSERIAL   NOT NULL,
    CONSTRAINT "pk_Payroll_2019" PRIMARY KEY (
        "Team"
     )
);



ALTER TABLE "Payroll_2020"
RENAME TO Payroll_2020;

CREATE TABLE "Payroll_2020" (
    "RK" INT   NOT NULL,
    "Team" VARCHAR(50)   NOT NULL,
    "Roster" INT   NOT NULL,
    "Active" BIGSERIAL   NOT NULL,
    "Injured_Reserve" BIGSERIAL   NOT NULL,
    "Total" BIGSERIAL   NOT NULL,
    CONSTRAINT "pk_Payroll_2020" PRIMARY KEY (
        "Team"
     )
);



ALTER TABLE "Payroll_2021"
RENAME TO Payroll_2021;

CREATE TABLE "Payroll_2021" (
    "RK" INT   NOT NULL,
    "Team" VARCHAR(50)   NOT NULL,
    "Roster" INT   NOT NULL,
    "Active" BIGSERIAL   NOT NULL,
    "Injured_Reserve" BIGSERIAL   NOT NULL,
    "Total" BIGSERIAL   NOT NULL,
    CONSTRAINT "pk_Payroll_2021" PRIMARY KEY (
        "Team"
     )
);



ALTER TABLE "Team_Value"
RENAME TO Team_Value;

CREATE TABLE "Team_Value" (
    "2019" DECIMAL   NOT NULL,
    "2020" DECIMAL   NOT NULL,
    "2021" DECIMAL   NOT NULL,
    "Team" VARCHAR(50)   NOT NULL,
    CONSTRAINT "pk_Team_Value" PRIMARY KEY (
        "Team"
     )
);

ALTER TABLE "Batting_2019" ADD CONSTRAINT "fk_Batting_2019_Team" FOREIGN KEY("Team")
REFERENCES "Batting_2020" ("Team");

ALTER TABLE "Batting_2020" ADD CONSTRAINT "fk_Batting_2020_Team" FOREIGN KEY("Team")
REFERENCES "Batting_2021" ("Team");

ALTER TABLE "Batting_2021" ADD CONSTRAINT "fk_Batting_2021_Team" FOREIGN KEY("Team")
REFERENCES "Attendance_2019" ("ABR");

ALTER TABLE "Attendance_2019" ADD CONSTRAINT "fk_Attendance_2019_Team" FOREIGN KEY("Team")
REFERENCES "Attendance_2021" ("Team");

ALTER TABLE "Attendance_2021" ADD CONSTRAINT "fk_Attendance_2021_Team" FOREIGN KEY("Team")
REFERENCES "Payroll_2021" ("Team");

ALTER TABLE "Payroll_2019" ADD CONSTRAINT "fk_Payroll_2019_Team" FOREIGN KEY("Team")
REFERENCES "Team_Value" ("2019");

ALTER TABLE "Payroll_2020" ADD CONSTRAINT "fk_Payroll_2020_Team" FOREIGN KEY("Team")
REFERENCES "Payroll_2019" ("Team");

ALTER TABLE "Payroll_2021" ADD CONSTRAINT "fk_Payroll_2021_Team" FOREIGN KEY("Team")
REFERENCES "Payroll_2020" ("Team");

