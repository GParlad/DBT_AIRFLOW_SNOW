SELECT
    city as City,
    COUNT(Customer_id) as Number_of_customers,
    SUM(Total_Revenue) as Total_Revenue,
    AVG(Age) as Average_age
FROM POC_AIRFLOW_DBT.RAW.telecom_customer_churn
GROUP BY city