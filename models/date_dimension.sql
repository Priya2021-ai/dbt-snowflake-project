WITH CTE AS (
    SELECT
        STARTED_AT,
        TO_TIMESTAMP(STARTED_AT)
    FROM {{ source('demo', 'bike') }}
    WHERE STARTED_AT != 'started_at'
)

SELECT *
FROM CTE;