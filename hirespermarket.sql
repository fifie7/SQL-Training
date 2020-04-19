--9.How many hires per market?
SELECT c.primary_market, COUNT(p.id) AS hires
FROM ol.salesforce_accounts AS c
LEFT JOIN placements AS p
 ON c.honeypot_id=p.company_id
GROUP BY c.primary_market
ORDER BY hires DESC