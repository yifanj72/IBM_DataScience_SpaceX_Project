/* Task 1 */
/* Display the names of the unique launch sites in the space mission */
select Unique(LAUNCH_SITE) from SPACEXTABL;

/* Task 2 */
/* Display 5 records where launch sites begin with the string 'CCA' */
SELECT LAUNCH_SITE from SPACEXTABL where (LAUNCH_SITE) LIKE 'CCA%' LIMIT 5;

/* Task 3 */
/* Display the total payload mass carried by boosters launched by NASA (CRS) */
select sum(PAYLOAD_MASS__KG_) as payloadmass from SPACEXTABL;

/* Task 4 */
/* Display average payload mass carried by booster version F9 v1.1 */
select avg(PAYLOAD_MASS__KG_) as payloadmass from SPACEXTABL;

/* Task 5 */
/* List the date when the first succesful landing outcome in ground pad was acheived */
select min(DATE) from SPACEXTABL;

/* Task 6 */
/* List the names of the boosters which have success in drone ship and have payload mass greater than 4000 but less than 6000 */
select BOOSTER_VERSION from SPACEXTABL 
where LANDING__OUTCOME='Success (drone ship)' 
and PAYLOAD_MASS__KG_ BETWEEN 4000 and 6000;

/* Task 7 */
/* List the total number of successful and failure mission outcomes */
select count(MISSION_OUTCOME) as missionoutcomes from SPACEXTABL GROUP BY MISSION_OUTCOME;

/* Task 8 */
/* List the names of the booster_versions which have carried the maximum payload mass. Use a subquery */
SELECT DISTINCT Booster_Version, max(PAYLOAD_MASS__KG_) as Maximum_Payload_Mass FROM SPACEXTABL 
Group By BOOSTER_VERSION Order By Maximum_Payload_Mass DESC;

/* Task 9 */
/* List the records which will display the month names, failure landing_outcomes in drone ship ,booster versions, launch_site for the months in year 2015 */
SELECT MONTH(DATE),MISSION_OUTCOME,BOOSTER_VERSION,LAUNCH_SITE FROM SPACEXTABL 
where EXTRACT(YEAR FROM DATE)='2015';


/* Task 10 */
/* Rank the count of successful landing_outcomes between the date 2010-06-04 and 2017-03-20 in descending order */
SELECT COUNT(LANDING__OUTCOME) FROM SPACEXTABL 
WHERE (LANDING__OUTCOME LIKE '%Success%')
AND (Date >'2010-06-04') 
AND (Date <'2017-03-20');
