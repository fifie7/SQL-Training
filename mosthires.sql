--6.Which active client has the most hires? what's the name of this company?
SELECT company.name, COUNT(placements.id) AS hires, company.type
FROM ol.salesforce_accounts AS company
LEFT JOIN placements
ON company.honeypot_id = placements.company_id
--Assuming that Full Client means active clients
WHERE company.account_status IN ('Full Client')
AND company.type IN ('Customer','Reactivation','Cancelled Client','Closed Down',
'Do Not Contact')
GROUP BY company.name, company.type
ORDER BY hires DESC
--This also does not take consideration of refund cases, since the question focuses on the # of hires ever made
--Below is the version WITH refund cases excluded
SELECT company.name, COUNT(placements.id) AS hires, company.type
FROM ol.salesforce_accounts AS company
LEFT JOIN placements
ON company.honeypot_id = placements.company_id
WHERE company.account_status IN ('Full Client')
AND placements.refund_case_at IS NULL
AND company.type IN ('Customer','Reactivation','Cancelled Client','Closed Down',
'Do Not Contact')
GROUP BY company.name
ORDER BY hires DESC