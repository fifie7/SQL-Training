--12.For all companies who got signed in 2019 and hired ever since, who is the CSM managing most of them?
SELECT COUNT(c.id) AS total_companies, csm.name
FROM ol.salesforce_accounts AS c
LEFT JOIN ol.salesforce_users AS csm
 ON csm.id=c.owner_id
LEFT JOIN time_d AS t
 ON t.date=c.signature_date
WHERE year=2019
 AND c.had_hire IS TRUE
GROUP BY csm.name
ORDER BY total_companies DESC