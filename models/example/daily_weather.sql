WITH daily_weather AS (

    SELECT
        DATE(time) AS weather_date,
        weather,
        temp,
        pressure,
        humidity,
        clouds
    FROM {{ source('demo', 'weather') }}

),

daily_weather_agg AS (

    SELECT
        weather_date,
        weather,
        ROUND(AVG(temp), 2) AS avg_temp,
        ROUND(AVG(pressure), 2) AS avg_pressure,
        ROUND(AVG(humidity), 2) AS avg_humidity,
        ROUND(AVG(clouds), 2) AS avg_clouds
    FROM daily_weather
    GROUP BY weather_date, weather

)

SELECT *
FROM daily_weather_agg

QUALIFY ROW_NUMBER() OVER (
    PARTITION BY weather_date
    ORDER BY avg_temp DESC
) = 1