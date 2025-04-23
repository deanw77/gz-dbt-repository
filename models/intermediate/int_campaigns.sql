select 
    *
from
    {{ ref('stg_raw__adwords') }}
UNION ALL
select 
    *
from
     {{ ref('stg_raw__bing') }}
UNION ALL
select 
    *
from
     {{ ref('stg_raw__critereo') }}
UNION ALL
select 
    *
from
      {{ ref('stg_raw__facebook') }}