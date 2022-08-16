with data_sql as (
    select * from mysql_large_data.large_data
),

final as (
    select row_id, energy_count, row_id * 100 as row_id_100
    from data_sql
)

select * from final