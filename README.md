# Final Project Week 1 Submission

## Presentation Content (based on Rubric)
Selected Topic - and Reason
The topic our group chose is Income Inequality across the U.S and what factors contribute to the spread of wealth. We chose this topic because we saw a large database potential with multiple characteristics to analyze and we were all interested in a topic dealing with a socio-economic issue still prevalent in today’s world.  

Is there an unbiased subset regarding population?  Census data has great quality of data and openly available.  By comparing and contrasting data by county we want to dive in and verify differences in variable factors that may contribute to poverty or lower income.

Description of the source data
Four tables by County level for poverty, population, unemployment / Median Household Income, and Education  (https://www.ers.usda.gov/data-products/county-level-data-sets/)

Questions we hope to answer with the data:
Is there income inequality in the U.S. and are demographic and/or geographic factors correlated to this income?

## GitHub (based on Rubric)

-	Master Branch created and all team members have joined
-	Description of communication protocols
o	Meeting on Wednesday during course breakout rooms
o	Mostly online and shared personal communication (email)
o	Slack channel setup with team members
o	Notifications on each person’s devices and workstations
-	Individual Branches
o	All Setup and verified

## Machine Learning Model (based on Rubric)
Preliminary data preprocessing is established - description and identification of data sources with single table pulling from SQL or CSV.

## Database & Technologies (based on Rubric)
The team members are expected to present a fully integrated database, including the following:
•	Database stores static data for use during the project
Completed through Amazon RDS
•	Database interfaces with the project in some format (e.g., scraping updates the database)
•	Includes at least two tables (or collections, if using MongoDB)
Completed import and design of four tables
•	Includes at least one join using the database language (not including any joins in Pandas)
Completed multiple table joins and created single separate project table
SELECT *
FROM county_statistics AS c
LEFT JOIN education AS e ON
c.FIPS = e.FIPS_edu
LEFT JOIN poverty AS p ON
c.FIPS = p.FIPS_pov
LEFT JOIN size AS s ON
c.FIPS = s.FIPS_size

## Dashboard (based on Rubric)

A blueprint for the dashboard is created and includes all of the following:
•	Storyboard on a Google Slide(s)
•	Description of the tool(s) that will be used to create the final dashboard
•	Description of interactive element(s)

Shared google slides for sharing results and presentation - template for storyboard and interactive elements


Utilize:
Slack - GitHub - VS Code - Jupyter - Tableau, Amazon Web Services, SQLLITE, Excel, Postgresql
