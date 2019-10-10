/* records per school year */
SELECT school_year, COUNT(school_id)
FROM cps_dropout_rate_2011_2019 
GROUP BY school_year
ORDER BY school_year;

/* schools with 2019 dropout rates >= 25% and thier commiunities */
SELECT dos.school_id, dos.school_name, dos.dropout_rate, com.community 
FROM cps_dropout_rate_2011_2019 AS dos
JOIN cps_sy1819_cca AS com
ON dos.school_id = com.school_id
WHERE dos.dropout_rate >= 25 AND dos.school_year = 2019;


/* crimes per community area in 2019 */
SELECT "Community Area", COUNT(id) AS n_crimes
FROM crimes_2019 
GROUP BY "Community Area"
ORDER BY n_crimes DESC
LIMIT 10;

/* top 10 community areas for number of jobs */
SELECT ctracts.commarea, comm.community, SUM(jobs.c000) AS jobs
FROM il_wac_s000_jt00_2017 AS jobs
JOIN il_xwalk AS locations
ON jobs.w_geocode = locations.tabblk2010
JOIN census_tracts_2010 AS ctracts
ON ctracts.geoid10 = locations.trct
JOIN community_areas AS comm
ON ctracts.commarea = comm.area_num_1
GROUP BY ctracts.commarea
ORDER BY SUM(jobs.c000) DESC
LIMIT 10;

