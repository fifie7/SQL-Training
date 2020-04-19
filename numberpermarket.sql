--2.How many Clients per primary market?
SELECT COUNT(*) AS total_num_of_clients , primary_market
FROM ol.salesforce_accounts
WHERE TYPE NOT IN ('Prospect', 'Other', 'Competitor')
GROUP BY primary_market
ORDER BY total_num_of_clients DESC;