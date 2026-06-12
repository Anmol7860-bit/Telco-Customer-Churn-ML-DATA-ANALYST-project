📊 Telco Customer Churn Analysis & Prediction
Overview

Customer churn is one of the most critical challenges in the telecommunications industry. Retaining existing customers is significantly more cost-effective than acquiring new ones. This project combines Machine Learning, SQL Analytics, and Tableau Visualization to identify churn patterns, predict customer attrition, and derive actionable business insights.

The project follows an end-to-end data analytics workflow:

Data Cleaning & Preprocessing
Exploratory Data Analysis (EDA)
Machine Learning Model Development
SQL-Based Business Analysis
Interactive Tableau Dashboard
Business Recommendations

Research and industry projects consistently show that churn prediction can help telecom companies proactively retain at-risk customers and improve revenue retention.

🚀 Project Objectives
Analyze customer behavior and churn patterns.
Build machine learning models to predict customer churn.
Identify key factors influencing churn.
Generate business insights using SQL.
Create an interactive Tableau dashboard for stakeholders.
Recommend retention strategies based on data findings.
📂 Dataset

Dataset: Telco Customer Churn Dataset

Features
Customer Information
Gender
Senior Citizen
Partner
Dependents
Service Information
Phone Service
Multiple Lines
Internet Service
Online Security
Device Protection
Tech Support
Streaming TV
Streaming Movies
Contract & Billing Information
Contract
Paperless Billing
Payment Method
Monthly Charges
Total Charges
Tenure
Target Variable
Churn (Yes/No)
🛠 Technologies Used
Programming
Python
Libraries
Pandas
NumPy
Matplotlib
Seaborn
Scikit-learn
Database
PostgreSQL
Visualization
Tableau Public
Development Environment
Jupyter Notebook
VS Code
📈 Machine Learning Workflow
Data Preprocessing
Missing value handling
Data type conversion
Feature encoding
Train-test split
Models Explored
Logistic Regression
Decision Tree Classifier
Random Forest Classifier
Evaluation Metrics
Accuracy Score
Precision
Recall
F1 Score
Confusion Matrix
ROC-AUC Score
🗄 SQL Analysis

The cleaned dataset was imported into PostgreSQL to answer business questions such as:

Business Questions
Which contract type experiences the highest churn?
Does tenure affect churn behavior?
Which payment methods have the highest churn rate?
How do monthly charges impact churn?
Which customer segments are most likely to leave?
Example SQL Analysis
SELECT Contract,
       COUNT(*) AS customers,
       SUM(CASE WHEN Churn='Yes' THEN 1 ELSE 0 END) AS churned_customers
FROM telecom_churn
GROUP BY Contract;
📊 Tableau Dashboard

Interactive dashboard created using Tableau Public.

Dashboard Features
Overall Customer Count
Churn Rate Analysis
Contract Type Analysis
Payment Method Analysis
Customer Tenure Insights
Monthly Charges Distribution
Customer Segmentation
Tableau Dashboard

View Interactive Tableau Dashboard

🔍 Key Insights
Churn Drivers
Customers on month-to-month contracts show higher churn rates.
Customers with shorter tenure are more likely to leave.
Lack of tech support is associated with increased churn.
Higher monthly charges correlate with higher churn probability.

These findings are consistent with many telecom churn studies and public churn-analysis projects.

💡 Business Recommendations
Customer Retention
Offer incentives to move customers from month-to-month contracts to annual plans.
Launch retention campaigns targeting new customers during their first few months.
Bundle Tech Support services with internet plans.
Create personalized offers for high-risk customers identified by the ML model.
Revenue Growth
Promote premium services to long-tenure customers.
Develop loyalty programs for customers with high lifetime value.
📁 Repository Structure
├── data/
│   └── Telco_Customer_Churn.csv
│
├── notebooks/
│   └── churn_analysis.ipynb
│
├── sql/
│   └── churn_analysis_queries.sql
│
├── tableau/
│   └── dashboard_screenshots
│
├── models/
│   └── trained_models
│
├── README.md
└── requirements.txt
📌 Future Improvements
Hyperparameter tuning using GridSearchCV
XGBoost implementation
Model deployment using Flask/FastAPI
Real-time churn prediction pipeline
Automated ETL workflow
🔗 Project Links
GitHub Repository

Telco Customer Churn ML & Data Analyst Project

Tableau Dashboard

Interactive Tableau Dashboard

👨‍💻 Author

Anmol Bhandare

Data Analytics | Machine Learning | SQL | Tableau | Python

If you found this project useful, consider giving it a ⭐ on GitHub.
