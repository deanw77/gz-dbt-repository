{{ dbt_utils.union_relations(
    relations=[
                ref('stg_raw__adwords'),
                ref('stg_raw__bing'),
                ref('stg_raw__critereo'),
                ref('stg_raw__facebook')
                ]
    ) }}