--4.How many clients per type who are in Berlin?
SELECT COUNT(*), type, primary_market
FROM ol.salesforce_accounts
WHERE TYPE NOT IN ('Prospect', 'Other', 'Competitor')
AND primary_market = 'Berlin'
GROUP BY type, primary_market
ORDER BY type DESC