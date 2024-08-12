{{

    config (materialized = 'table')
}}

with 
admissions as 
  (select * 
  from 
    annular-beacon-432305-h2.medicare.hospital_admissions)
,icu_stays as
  (select * 
  from 
    annular-beacon-432305-h2.medicare.icu_stays)
select a.* 
from admissions a 
join icu_stays as b
on a.subject_id = b.subject_id