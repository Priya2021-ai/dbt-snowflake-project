WITH bike AS (

    SELECT DISTINCT
        START_STATION_ID AS station_id,
        START_STATION_NAME AS station_name,
        START_LAT AS station_lat,
        START_LNG AS station_lng
    FROM {{ ref('stg_bike') }}
    WHERE START_STATION_ID IS NOT NULL

)

SELECT *
FROM bike