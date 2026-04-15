WITH BIKE AS (

    SELECT
        TRIPDURATION,
        STARTTIME,
        STOPTIME,
        START_STATION_ID,
        START_STATION_NAME,
        START_LAT,
        START_LNG,
        END_STATION_ID,
        END_STATION_NAME,
        END_LAT,
        END_LNG,
        BIKEID,
        USERTYPE,
        BIRTH_YEAR,
        GENDER

    FROM {{ source('demo', 'bike') }}

    WHERE TRIPDURATION != 'tripduration'

)

SELECT *
FROM BIKE