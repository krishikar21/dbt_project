{{
    config (materialized = 'table')
}}

with 
admissions as 
  (select * 
  from 
    {{ref ('hospital_admissions')}})
,icu_stays as
  (select * 
  from 
    {{ref ('icu_stays')}})
select a.* 
from admissions a 
join icu_stays as b
on a.subject_id = b.subject_id