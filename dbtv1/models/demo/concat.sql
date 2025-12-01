with concat_data as (
    select * from {{ source('employee_data_sheet','EMPLOYEE_DATA')}}
),
final as (
    select EMP_ID, CONCAT(EMP_FIRST_NAME, EMP_LAST_NAME) as EMP_FULL_NAME from concat_data
)

select * from final