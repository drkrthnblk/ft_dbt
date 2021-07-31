with weather as(
    select * from "FIVETRAN_DATABASE"."S3"."FIVETRAN_WEATHER"
)

select * from weather