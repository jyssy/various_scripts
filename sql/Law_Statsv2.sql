-- Tidier Law report for J -- item notes
select
    b.bib_id 'BibID',
    b.status 'BibStatus',
    h.holdings_id 'HoldingsID',
    h.location 'Location',
    h.call_number 'CallNumber',
    i.updated_by 'UpdatedBy',
    i.date_updated 'DateUpdated',
    n.note 'ItemNote'
from ole_ds_bib_t b
join ole_ds_holdings_t h on b.bib_id = h.bib_id
join ole_ds_item_t i on h.holdings_id = i.holdings_id
join ole_ds_item_note_t n on i.item_id = n.item_id
where 
    h.location like '%Law%' and 
    n.type = 'nonPublic' and 
    n.note regexp '^[[:alpha:]]{6}$' and 
    n.note not in ('folder', 'binder', 'SLAVEX', 'NISORI') and
    i.date_created between '2021-06-01' and '2021-07-01';
    
    
-- Tidier Law report for J - Bib 969 notes
select
    b.bib_id 'Bib ID',
    (select group_concat(m1.content) from cat.marc m1 where m.bib_id = m1.bib_id and m1.tag = 969) as '969',
    h.call_number 'CallNumber',
    b.date_updated 'DateBibUpdated',
    b.updated_by 'BibUpdatedBy'
from cat.marc m
left join ole_ds_holdings_t h on m.bib_id = h.bib_id
join ole_ds_bib_t b on m.bib_id = b.bib_id
where 
    m.tag = 969 and
    b.date_updated between '2021-06-01' and '2021-07-01';