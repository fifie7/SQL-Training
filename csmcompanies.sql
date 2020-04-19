--10.A list of CSM, the number of companies they manage, the number of hires those companies had and the last time any of those companies hired.
SELECT csm.name, COUNT(DISTINCT c.id) AS companies, COUNT(p.id) AS hires, MAX(p.placed_at) AS recently_hired_at
FROM ol.salesforce_users AS csm
LEFT JOIN ol.salesforce_accounts AS c
 ON c.owner_id=csm.id
LEFT JOIN placements AS p
 ON c.honeypot_id=p.company_id
WHERE c.type IN ('Customer','Reactivation','Cancelled Client','Closed Down',
'Do Not Contact')
GROUP BY csm.name
ORDER BY companies DESC, hires DESC