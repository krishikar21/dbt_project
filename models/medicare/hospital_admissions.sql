{{
config(materialized = 'table')
}}

select * 
  from 
    annular-beacon-432305-h2.medicare.hospital_admissions