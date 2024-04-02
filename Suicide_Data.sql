-- Retrieving the data from the table
SELECT * FROM suicides_data;


-- CHECKING THE NUMBER OF ROWS
SELECT COUNT(*) FROM suicides_data;


-- TOTAL NUMBER OF SUICIDES
SELECT SUM(Number_of_suicides) 'TOTAL DEATH' FROM suicides_data;


-- Highest to lowest suicide rate by year
SELECT Year_ 'Year', SUM(Number_of_suicides) 'Suicides' FROM suicides_data
GROUP BY Year_
ORDER BY 2 DESC;


-- Male vs Female
SELECT GENDER, SUM(Number_of_suicides) 'TOTAL DEATH' FROM suicides_data
GROUP BY GENDER
ORDER BY 2 DESC;


-- What are the causes of Suicide
select Causes from suicides_data
group by Causes
order by 1;


-- Top 5 causes
SELECT Causes, SUM(Number_of_suicides) FROM suicides_data
GROUP BY Causes
ORDER BY 2 DESC
LIMIT 5;


-- Top 5 Education
SELECT Education_status, SUM(Number_of_suicides) 'Total Death' FROM suicides_data
GROUP BY Education_status
ORDER BY 2 DESC
LIMIT 5;


--  What are the means adopted
SELECT Means_adopted FROM suicides_data
GROUP BY Means_adopted;


-- Top 5 means adopted
SELECT Means_adopted, SUM(Number_of_suicides) 'Total Death' FROM suicides_data
GROUP BY Means_adopted
ORDER BY 2 DESC LIMIT 5;


-- Top 5 professional profile
SELECT Professional_Profile, SUM(Number_of_suicides) 'TOTAL DEATH' FROM suicides_data
GROUP BY Professional_Profile
ORDER BY 2 DESC LIMIT 5;


-- Highest to lowest social_status
SELECT Social_Status, SUM(Number_of_suicides) 'TOTAL DEATH' FROM suicides_data
GROUP BY Social_Status
ORDER BY 2 DESC;


-- Highest to lowest age grp
SELECT Age_group,SUM(Number_of_suicides) 'TOTAL DEATH' FROM suicides_data
GROUP BY Age_group
ORDER BY 2 DESC;



-- Conclusion :
-- 1) More than 100 people commit suicide every year.
-- 2) The suicide rate of Male is more than that of Female.
-- 3) Some of the main causes are Prolonged Illness, Mental Illness and Family Problems.
-- 4) The means used mostly are by Hanging, Consuming Poison.
-- 5) The professions of most people who committed suicide are Service(Private and Government), House Wife and Students.
-- 6) The status of the most people who commited suicide are Married and Single between the age 15 to 60.



















