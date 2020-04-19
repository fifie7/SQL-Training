--7.How many clients have ever hired?
--Full clients ONLY
SELECT COUNT (DISTINCT p.id)
FROM placements AS p
LEFT JOIN ol.salesforce_accounts AS c
ON c.honeypot_id = p.company_id
WHERE c.account_status IN ('Full Client')
AND company.type IN ('Customer','Reactivation','Cancelled Client','Closed Down',
'Do Not Contact')

--ALL considered clients without refund cases considered
SELECT COUNT (DISTINCT p.id)
FROM placements AS p
LEFT JOIN ol.salesforce_accounts AS c
ON c.honeypot_id = p.company_id
WHERE c.type IN ('Customer','Reactivation','Cancelled Client','Closed Down',
'Do Not Contact')