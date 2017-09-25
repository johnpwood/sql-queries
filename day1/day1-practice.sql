/* To answer the following questions, please run your queries in https://chinook.ml. You might also copy them here for your reference. */

--If you wish, drop the tables in the Chinook Database:
drop table if exists PlaylistTrack;
drop table if exists Playlist;
drop table if exists InvoiceLine;
drop table if exists Invoice;
drop table if exists Track;
drop table if exists Genre;
drop table if exists MediaType;
drop table if exists Album;
drop table if exists Artist;
drop table if exists Customer;
drop table if exists Employee;

-- Note: if you refresh, these tables will reappear and your tables will disappear.

--TABLE CREATION
-- Create a table with an id, a text column, and a numeric column.

CREATE TABLE poems (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  title TEXT,
  length INTEGER
);

--ROW CREATION
-- Insert two rows of data into your table.
INSERT INTO poems (title, length) VALUES ("Sonnet 1: From fairest creatures we desire increase");
INSERT INTO poems (title, length) VALUES ("Sonnet 2: When forty winters have besieged thy brow");

--SELECT BASICS
-- Retrieve your two rows of data.
SELECT * FROM poems;

-- Filter the data to one row with a where clause.
SELECT * FROM poems WHERE id=2;

-- Take off the where clause and select all of the data again.
-- Then order the data by one of the fields.
SELECT * FROM poems ORDER BY title;

-- Flip the order.
SELECT * FROM poems ORDER BY title DESC;

-- Limit the data to one row.
SELECT * FROM poems ORDER BY title DESC LIMIT 1;

--SELECT BASICS WITH REAL DATA
-- Now drop your table with the following command:
DROP TABLE table_name;

-- Import the city table by copying the statements from city.sql.

-- Select all of the cities with populations less than 1,000,000.
SELECT * from city WHERE population < 1000000;
-- Further filter the results with extra conditions.
SELECT * from city WHERE population < 1000000 AND countrycode = "BEL";
-- Select all of the cities from the United States.
SELECT * from city WHERE countrycode = "USA";
-- Select all of the cities from North America.
SELECT * from city WHERE countrycode IN ("USA", "CAN", "MEX", "CRI", "ATG", "BHS", "BRB", "BLZ", "CUB", "DMA", "DOM", "SLV", "GRD", "GTM",
"HTI", "HND", "JAM", "NIC", "PAN", "KNA", "LCA", "VCT", "TTO")
-- Select all of the cities that end with 'town' or 'ton'.

-- Select the cities whose country codes contain a 'Z'.

-- NEED MORE PRACTICE?
-- Try importing the country database and selecting different rows and columns.

-- CALCULATIONS AND AGGREGATIONS

-- Copy the statements from country.sql and run them in chinook.

-- Calculate the population density of each country.

-- Which nation gained its independence first?

-- Count the number of nations with 'stan' in their name (or 'Guinea' or 'land').

-- Count the number of countries in Africa.

-- Count the number of nations which gained their independence after 1960.

-- Find the average life expectancy for European and Asian nations.


--MORE PRACTICE
-- Copy the countrylanguage table into chinook.

-- How many distinct languages does this table contain?

-- Which nation has the most recorded languages?

-- Which languages are spoken in the most nations?

-- Which language is most creolized?


--ONE FOR THE MONEY
-- Drop the tables above if you wish:
drop table if exists country;
drop table if exists city;
drop table if exists countrylanguage;

-- Copy the computer_jobs table into chinook, and do a little job research.

-- Which state, on average, pays computer workers the most?

-- Which field of computer science pays the most on average?

-- Which field has the most number of jobs?

-- How much do web developers make in your state?

-- Which state employs the most web developers?


--STILL WANT MORE?
-- Find some data you want to play around with. These queries can be painfully rote if you're using fake data--you can look up only so many fake product orders before your mind begins to wander. See if you can find data for something you're interested in. If you can get the data into a spreadsheet, I'll help you convert it and insert it into chinook. I also have job data for all occupations in Dallas if you're interested.
