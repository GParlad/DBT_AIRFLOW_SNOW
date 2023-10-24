{{
  config(
    materialized='table'
  )
}}

SELECT 
    zip_code,
    city,
    latitude,
    longitude,
    population
FROM POC_AIRFLOW_DBT.BRONZE_LAYER.TELECOM_CUSTOMER_CHURN
LEFT JOIN POC_AIRFLOW_DBT.BRONZE_LAYER.ZIPCODE_POPULATION USING (zip_code)