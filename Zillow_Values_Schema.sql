-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/a6adRT
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

-- Modify this code to update the DB schema diagram.
-- To reset the sample schema, replace everything with
-- two dots ('..' - without quotes).

CREATE TABLE "Zillow_Homes" (
    "Date" date   NOT NULL,
    "CA" float   NOT NULL,
    "TX" float   NOT NULL,
    "FL" float   NOT NULL,
    "NY" float   NOT NULL,
    "PA" float   NOT NULL,
    CONSTRAINT "pk_Zillow_Homes" PRIMARY KEY (
        "Date"
     )
);

CREATE TABLE "Zillow_Rental" (
    "Date" date   NOT NULL,
    "CA" float   NOT NULL,
    "TX" float   NOT NULL,
    "FL" float   NOT NULL,
    "NY" float   NOT NULL,
    "PA" float   NOT NULL,
    CONSTRAINT "pk_Zillow_Rental" PRIMARY KEY (
        "Date"
     )
);

ALTER TABLE "Zillow_Homes" ADD CONSTRAINT "fk_Zillow_Homes_Date" FOREIGN KEY("Date")
REFERENCES "Zillow_Rental" ("Date");

