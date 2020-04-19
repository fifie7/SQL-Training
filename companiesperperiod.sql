--11.How many companies signed per period for every period in 2019?
SELECT COUNT(c.id), time.period AS period
FROM ol.salesforce_accounts AS c
LEFT JOIN time_d AS time
 ON time.date=c.signature_date
WHERE year = 2019
GROUP BY period
ORDER BY period