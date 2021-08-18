-- BIB TEST querying - expanding the potential for organization before any python is applied to the results later.

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
 n.TYPE = 'nonPublic' AND
 n.note REGEXP '^[[:alpha:]]{6}$' AND
 n.note NOT IN ('folder', 'binder', 'SLAVEX', 'NISORI') AND
 i.date_created between '2021-07-01' AND '2021-08-01'
order BY h.call_number ASC;
