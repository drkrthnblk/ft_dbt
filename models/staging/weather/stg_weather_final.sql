with weather_final as(
    select
        city:id::int as city_id,
        city:name::string as city_name,
        city:coord.lat::float as city_lat,
        city:coord.lon::float as city_lon,
        clouds:all::int as clouds,
        (main:temp::float)-273.15 as temp_avg,
        (main:temp_min::float)-273.15 as temp_min,
        (main:temp_max::float)-273.15 as temp_max,
        weather[0]:main::string as weather,
        weather[0]:description::string as weather_desc,
        weather[0]:icon::string as weather_icon,
        wind:deg::float as wind_dir,
        wind:speed::float as wind_speed
    from {{ ref('stg_weather') }}
)

select * from weather_final