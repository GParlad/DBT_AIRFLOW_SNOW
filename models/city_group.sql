SELECT
    city,
    COUNT(Customer_id) as number_of_customers,
    SUM(Total_Revenue),
    AVG(Age) as average_age
FROM POC_AIRFLOW_DBT.RAW.telecom_customer_churn
GROUP BY city