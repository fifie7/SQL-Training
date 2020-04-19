--8.A list of all companies with more than 3 hires
SELECT c.name, COUNT(p.id) AS hires
FROM ol.salesforce_accounts AS c
LEFT JOIN placements AS p
 ON c.honeypot_id=p.company_id
WHERE c.account_status IN ('Full Client')
GROUP BY c.name
HAVING COUNT(p.id) > 3
ORDER BY hires DESC