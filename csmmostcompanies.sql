--5.Which CSM has the most (existing) companies to take care off?
SELECT COUNT(DISTINCT company.id) ,csm.name
FROM ol.salesforce_accounts AS company
LEFT JOIN ol.salesforce_users AS csm
  ON company.owner_id=csm.id
WHERE company.type NOT IN('Prospect', 'Other', 'Competitor')
GROUP BY csm.id
ORDER BY COUNT(DISTINCT company.id) DESC