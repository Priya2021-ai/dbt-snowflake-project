WITH CTE AS (
    SELECT
        STARTED_AT
    FROM {{ source('demo', 'bike') }}
)

SELECT *
FROM CTE

