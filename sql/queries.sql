/* records per school year */
SELECT school_year, COUNT(school_id)
FROM cps_dropout_rate_2011_2019 
GROUP BY school_year
ORDER BY school_year;

/* schools with 2019 dropout rates >= 25% and thier commiunities */
SELECT profiles.school_id, profiles.community, dropout.*
FROM
JOIN
WHERE 

/* crimes per community area in 2019 */
SELECT "Community Area", COUNT(id) AS n_crimes
FROM crimes_2019 
GROUP BY "Community Area"
ORDER BY n_crimes DESC
LIMIT 10;