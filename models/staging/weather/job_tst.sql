begin;
  select * from {{ ref('stg_weather_final') }}
commit; 