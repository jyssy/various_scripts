-- Law report for Jesse -- item notes // 
select
    b.bib_id as 'Bib ID',
    b.status as 'Bib Status',
--    b.created_by as 'Created by',
--    b.date_created as 'Date created',
--    b.updated_by as 'Updated by',
--    b.date_updated as 'Date updated',
    h.holdings_id as 'Holdings ID',
    h.location as 'Location',
    h.call_number as 'Call Number',
    i.updated_by as 'Updated by',
    i.date_updated as 'Date updated',
    n.note as 'Item note'
from ole_ds_bib_t b
join ole_ds_holdings_t h on b.bib_id = h.bib_id
join ole_ds_item_t i on h.holdings_id = i.holdings_id
join ole_ds_item_note_t n on i.item_id = n.item_id
where 
    h.location like '%Law%' and 
    n.type = 'nonPublic' and 
    n.note regexp '^[[:alpha:]]{6}$' and 
    n.note not in ('folder', 'binder', 'SLAVEX', 'NISORI') and
--    i.date_updated between '2021-02-01' and '2021-03-01' and
    i.date_created between '2021-03-01' and '2021-04-01';
    
-- Law report for Jesse - Bib 969 notes
select
    b.bib_id as 'Bib ID',
    (select group_concat(m1.content) from cat.marc m1 where m.bib_id = m1.bib_id and m1.tag = 969) as '969',
    h.call_number as 'Call number',
    b.date_updated as 'Date bib updated',
    b.updated_by as 'Bib Updated by'
from cat.marc m
left join ole_ds_holdings_t h on m.bib_id = h.bib_id
join ole_ds_bib_t b on m.bib_id = b.bib_id
where 
    m.tag = 969 and
    b.date_updated between '2021-03-01' and '2021-04-01';