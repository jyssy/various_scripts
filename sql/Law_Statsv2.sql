-- Tidier Law report for J -- item notes
SELECT
    b.bib_id 'BibID',
    b.status 'BibStatus',
    h.holdings_id 'HoldingsID',
    h.location 'Location',
    h.call_number 'CallNumber',
    i.updated_by 'UpdatedBy',
    i.date_updated 'DateUpdated',
    n.note 'ItemNote'
FROM ole_ds_bib_t b
JOIN ole_ds_holdings_t h ON b.bib_id = h.bib_id
JOIN ole_ds_item_t i ON h.holdings_id = i.holdings_id
JOIN ole_ds_item_note_t n ON i.item_id = n.item_id
WHERE 
    h.location LIKE '%Law%' AND 
    n.type = 'nonPublic' AND 
    n.note regexp '^[[:alpha:]]{6}$' AND 
    n.note NOT IN ('folder', 'binder', 'SLAVEX', 'NISORI') AND
    i.date_created BETWEEN '2021-06-01' AND '2021-07-01';
    
    
-- Tidier Law report for J - Bib 969 notes
SELECT
    b.bib_id 'Bib ID',
    (SELECT group_concat(m1.content) FROM cat.marc m1 WHERE m.bib_id = m1.bib_id AND m1.tag = 969) AS '969',
    h.call_number 'CallNumber',
    b.date_updated 'DateBibUpdated',
    b.updated_by 'BibUpdatedBy'
FROM cat.marc m
left JOIN ole_ds_holdings_t h ON m.bib_id = h.bib_id
JOIN ole_ds_bib_t b ON m.bib_id = b.bib_id
WHERE 
    m.tag = 969 AND
    b.date_updated BETWEEN '2021-06-01' AND '2021-07-01';
