SELECT 
    zip_code,
    city,
    latitude,
    longitude,
    population
FROM POC_AIRFLOW_DBT.RAW.TELECOM_CUSTOMER_CHURN
LEFT JOIN POC_AIRFLOW_DBT.RAW.ZIPCODE_POPULATION USING (zip_code)