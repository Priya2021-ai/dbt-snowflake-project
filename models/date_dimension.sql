WITH CTE AS (
    SELECT
        TO_TIMESTAMP(STARTTIME) AS STARTTIME,
        DATE(TO_TIMESTAMP(STARTTIME)) AS DATE_STARTTIME,
        HOUR(TO_TIMESTAMP(STARTTIME)) AS HOUR_STARTTIME,  
        
    {{day_type('STARTTIME')}} AS DAY_TYPE,
    {{get_season('STARTTIME')}} AS STATION_OF_YEAR

    FROM {{ ref('stg_bike') }}
    WHERE STARTTIME != 'starttime'
)

SELECT 
    * FROM CTE
    