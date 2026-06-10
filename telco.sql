CREATE TABLE Telco(
customerID varchar(150),
gender varchar(150),
SeniorCitizen int,
Partner varchar(150),
Dependents varchar(150),
tenure int,
PhoneService varchar(150),
MultipleLines varchar(150),
InternetService varchar(150),
OnlineSecurity varchar(150),
OnlineBackup varchar(150),
DeviceProtection varchar(150),
TechSupport varchar(150),
StreamingTV varchar(150),
StreamingMovies varchar(150),
Contract varchar(150),
paperlessBilling varchar(150),
PaymentMethod varchar(150),
MonthlyCharges decimal,
TotalCharges decimal,
Churn varchar(150),
primary key (customerID)
);

select * from Telco;

select count(*) from telco;

-- Which contract type has the highest churn 
select contract, 
count(*) as customers,
sum(CASE WHEN Churn='1' THEN 1 ELSE 0 END) as churned
from telco
group by contract;

-- Which payment method has the most churn 
select paymentmethod,
count(*) as customers,
sum(CASE WHEN Churn='1' THEN 1 ELSE 0 END) as churned
from telco
group by paymentmethod;

-- Does tenure affect churn 
select 
Case  
when tenure < 15  then 'below 15'
when tenure < 30  then '15-29'
when tenure < 45  then '30-44'
else '45 to 72'
end as tenure_group,
count(*) as customers
from telco
Where churn='1'
group by tenure_group
order by tenure_group;

-- for which internet service customers churn more
select InternetService,
       count(*) as customers,
       sum(CASE WHEN Churn='1' THEN 1 ELSE 0 END) As churned
FROM telco
GROUP BY InternetService;










