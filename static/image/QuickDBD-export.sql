-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "county_statistics" (
    "fips" int   NOT NULL,
    "Name" text   NOT NULL,
    "State" text   NOT NULL,
    "Unemployment_Rate_2018" int   NOT NULL,
    "Median_Household_Income_2018" int   NOT NULL,
    "Population_2018" int   NOT NULL,
    CONSTRAINT "pk_county_statistics" PRIMARY KEY (
        "fips"
     )
);

CREATE TABLE "education" (
    "fips_edu" int   NOT NULL,
    "Percent_of_adults_with_a_bachelors_degree_or_higher_2014-18" int   NOT NULL,
    CONSTRAINT "pk_education" PRIMARY KEY (
        "fips_edu"
     )
);

CREATE TABLE "poverty" (
    "fips_pov" int   NOT NULL,
    "PCTPOVALL_2018" int   NOT NULL,
    CONSTRAINT "pk_poverty" PRIMARY KEY (
        "fips_pov"
     )
);

CREATE TABLE "size" (
    "fips_size" int   NOT NULL,
    "POP_SQMI" int   NOT NULL,
    "AVE_HH_SZ" int   NOT NULL,
    CONSTRAINT "pk_size" PRIMARY KEY (
        "fips_size"
     )
);

ALTER TABLE "county_statistics" ADD CONSTRAINT "fk_county_statistics_fips" FOREIGN KEY("fips")
REFERENCES "size" ("fips_size");

ALTER TABLE "poverty" ADD CONSTRAINT "fk_poverty_fips_pov" FOREIGN KEY("fips_pov")
REFERENCES "education" ("fips_edu");

ALTER TABLE "size" ADD CONSTRAINT "fk_size_fips_size" FOREIGN KEY("fips_size")
REFERENCES "poverty" ("fips_pov");

