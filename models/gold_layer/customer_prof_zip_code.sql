SELECT 
    zip_code,
    COUNT(customer_id) as total_customers,
    AVG(Age) as average_age, 
    AVG(number_of_dependents) as average_no_dependents_per_customer,
    ((sum(case when Gender = 'Male' then 1 else 0 end)/count(*))*100) as male_percentage,
    ((sum(case when Gender = 'Female' then 1 else 0 end)/count(*))*100) as female_percentage,
    ((sum(case when phone_service = 'True' then 1 else 0 end)/count(*))*100) as phone_service_percentage,
    ((sum(case when internet_service = 'True' then 1 else 0 end)/count(*))*100) as internet_service_percentage
FROM POC_AIRFLOW_DBT.BRONZE_LAYER.telecom_customer_churn
GROUP BY zip_code
