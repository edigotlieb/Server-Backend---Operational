SELECT DYNAMIC_TABLES.TABLE_NAME, APPS.APP_NAME, APPS.APP_KEY FROM DYNAMIC_TABLES
LEFT JOIN APPS ON APPS.APP_ID = DYNAMIC_TABLES.APP_ID
WHERE DYNAMIC_TABLES.TABLE_NAME = ?