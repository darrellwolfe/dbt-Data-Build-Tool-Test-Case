with source_data as (
    select
        lrsn as lrsn,
        nullif(ltrim(rtrim(pin)), '') as pin,
        try_cast(neighborhood as int) as neighborhood,
        nullif(ltrim(rtrim(classcd)), '') as classcd,
        upper(nullif(ltrim(rtrim(effstatus)), '')) as effstatus
    from {{ source('raw', 'parceltableview') }}
)

select
    lrsn,
    pin,
    neighborhood,
    classcd,
    effstatus
from source_data
where effstatus = 'A'
