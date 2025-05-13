# AdventureWorks Data Engineering Project

## Introduction
This project demonstrates an end-to-end data engineering pipeline built on Microsoft Azure using the AdventureWorks dataset. It showcases how raw data is ingested from a public source, transformed using Databricks, and served through Synapse for reporting in Power BI.The pipeline is designed to enable efficient data transformation and access. It highlights real-world practices in building modern data workflows for analytics and reporting.

## Architecture Diagram
![Project Architecture](Architecture/ArchitectureDiagram.jpg)

### 📂 Data Source (GitHub)
The raw dataset is hosted on GitHub and accessed through a Raw URL.

### ⚙️ Azure Data Factory (ADF)
Azure Data Factory is used for data ingestion.

It Fetches the dataset from GitHub using an HTTP linked service.

Stores the data into the Bronze layer (raw) in Azure Data Lake Gen2 via a Data Lake linked service.

### 🪣 Azure Data Lake Storage Gen2
Azure Data Lake acts as the central storage layer using the medallion architecture:

Bronze Layer: Contains raw data directly ingested from the source.

Silver Layer: Holds cleaned and transformed data.

Gold Layer: Stores the final curated data used for analytics and reporting.

### 🧪 Azure Databricks
Used for processing and transforming data using PySpark:

- Reads raw data from the Bronze layer.

- Applies necessary transformations.

- Writes the cleaned data to the Silver layer.

### 🧠 Azure Synapse Analytics
Connects to the Silver layer using storage account keys.

Writes finalized data to the Gold layer for reporting.

### 📊 Power BI
Connects to the Gold layer to build interactive dashboards and visual reports, providing business insights from the curated data.


## 🧰 Technologies Used
- **GitHub** – Hosted raw dataset

- **Azure Data Factory** – Data ingestion using linked services

- **Azure Data Lake Storage Gen2** – Bronze, Silver, Gold architecture

- **Azure Databricks** – Data transformation using PySpark

- **Python** – Data processing and transformation

- **Azure Synapse Analytics** – Querying using SQL

- **Power BI** – Interactive dashboards and visualizations

## 📊 Dataset Description
This project uses the AdventureWorks dataset, a widely used sample database provided by Microsoft. It represents a fictional company, Adventure Works Cycles, which sells bicycles and related products globally.

The dataset includes multiple related tables containing realistic business data such as:

- Sales orders and transactions

- Customer and employee information

- Products and categories

- Geographic and regional data

- Shipping and purchasing details

This makes it ideal for demonstrating data engineering pipelines involving complex relationships, transformations, and business intelligence reporting.

The dataset was sourced from Kaggle and uploaded to GitHub for use via HTTP in Azure Data Factory.

## Dataset Link
Link: https://www.kaggle.com/datasets/ukveteran/adventure-works

## Scripts for Project
- [Python Notebook Transformation Script](Scripts/Transformation(SilverLayer).ipynb)
- [Create External Tables](Scripts/ExternalTable.sql)
- [Create Views Gold](Scripts/CreateViewsGold.sql)
- [Create Schema](Scripts/CreateSchema.sql)


## 🎯 Project Outcome
Designed and implemented a scalable data pipeline using Azure services to process and transform raw business data. Delivered curated datasets in a structured format ready for analysis and reporting tools.


