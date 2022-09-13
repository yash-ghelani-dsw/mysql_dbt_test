with data_sql as (
    select * from mysql_large_data.large_data
),

final as (
    select days, lclid, row_id, energy_max, energy_min, energy_std, CAST ('2014-7-31 15:42:52' AS TIMESTAMP) as created_at
    from data_sql 
)

select * from final
