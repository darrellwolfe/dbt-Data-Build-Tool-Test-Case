with parcels as (
    select *
    from {{ ref('int_parcels_classification') }}
)

select
    district,
    pin_city,
    count(*) as parcel_count,
    count(distinct classcd) as class_count
from parcels
group by
    district,
    pin_city
