with parcels as (
    select *
    from {{ ref('stg_parcels') }}
)

select
    parcels.*,
    {{ classify_district('parcels.neighborhood') }} as district,
    {{ classify_pin_city('parcels.pin') }} as pin_city
from parcels
