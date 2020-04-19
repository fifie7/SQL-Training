--1.How many Clients we have?
SELECT COUNT(*) AS num_of_clients
FROM ol.salesforce_accounts
WHERE TYPE NOT IN ('Prospect', 'Other', 'Competitor');