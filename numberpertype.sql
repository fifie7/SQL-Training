--3.How many Clients per type?
SELECT COUNT(*), type
FROM ol.salesforce_accounts
WHERE TYPE NOT IN ('Prospect', 'Other', 'Competitor')
GROUP BY type
ORDER BY type DESC