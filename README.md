# End-To-End Datawarehouse Solution
**Extracted, Transformed, and Loaded data from an OLTP database to create a functional Datawarehouse. Conducted analysis and reporting using SSIS, SSAS, and SSRS.**

## Introduction
This is an End-To-End project where I have:
- Extracted data from an OLTP database using SSIS.
- Created a data warehouse adhering to data warehouse standards with a conventional star schema model.
- Analyzed the extracted data and created a multidimensional cube using SSAS, suitable for reporting and analysis.
- Utilized SSRS to connect to the analysis service and produced several important reports for executives.

In the end, I can confidently say that I have created a well-rounded solution for business intelligence using SSIS, SSAS, and SSRS.

Here is the ER diagram of the source dataset (Fictional dataset of Gravity Bookstores):

![ERD of OLTP DB](https://github.com/user-attachments/assets/f9c43e9c-1e05-4aed-9ec4-587b8f261a0e)

## Phase 1: ETL using SSIS
The data was located on a traditional OLTP database which was normalized. I first created a database inside SQL Server for the data warehouse. Then, I created a staging DB for the creation and joining of data from multiple entities before loading it into the DWH. This step was crucial to ensure data integrity and maintainability.

**Staging Process:**


![Staging Process](https://github.com/user-attachments/assets/6fcfd28f-9494-4ccf-9c18-7b9468e292cf)

After staging and having access to physical denormalized tables, it was time to extract and get the data flowing. I created 4 dimensions based on my inference and understanding of the data, ensuring that the chosen dimensions could answer any questions asked by executive members.

- **Customer Dimension (DimCust):**

  
![DimCust Data Flow from staging to DWH](https://github.com/user-attachments/assets/1fd2c321-d41c-49c5-ac55-fb8c1de26c62)

- **Books Dimension (DimBooks):**

  
![DimBooks Data Flow from Staging to DWH](https://github.com/user-attachments/assets/100584a2-2e4f-41a0-9029-9564ce17bcc4)

- **Shipping Methods Dimension (DimShippingMethods):**

  
![DimShipmentMethods Data flow from staging to DWH](https://github.com/user-attachments/assets/9e0dd01c-61a2-4061-941c-f25083527f9c)

- **Time Intelligence Dimension (DimDate):**
Created by SQL Query provided in the repo.

The fact table has two measures: the price of the order line and the cost of shipment methods. The fact table was created using an SQL query also provided in the repo.

![Fact Table Data Flow](https://github.com/user-attachments/assets/42118a6b-445f-4259-bd77-1378c980d8dd)

### The final dimensional model of the DWH:


![Dimensional Modeling](https://github.com/user-attachments/assets/44144648-6d1f-42b0-a423-e2f890bcdb09)

## Phase 2: Analysis (SSAS)
With access to a well-modeled DWH, I created a cube that would facilitate reporting and deriving insights from the data. In this project, I used multidimensional SSAS to create a cube encompassing all useful and meaningful data combinations. This cube allowed me to extract insights with high performance.

**Multidimensional Cube:**


![OLAP Cube](https://github.com/user-attachments/assets/4c54e333-5159-45c7-97cd-bfe241d9d449)

## Phase 3: Reporting (SSRS)
I created 4 reports with interactivity and provided helpful insights to users. By connecting to the cube from the previous phase, I had access to sales, count of orders, and cost measures, as well as dimensions providing perspectives to various problems.

- **Report #1**: Overview of the bookstore's performance by time and total revenue across the years displayed with a bar graph.


![General overview of Gravity Book Store](https://github.com/user-attachments/assets/6648a604-d53b-4555-8894-8a24075fe8d0)

- **Report #2**: Interactive report showing sales made to each country over the years. Users can choose a country from a drop-down list to view its performance.


![Reporting Countries Sales with Interactive Drop down menu](https://github.com/user-attachments/assets/f3dac281-2ba6-491e-bc24-4c5fc913b9c5)

- **Report #3**: Linked report with each country and shipment method. Clicking on a country in the previous report shows the performance of the selected country.

  
![Countries With Shipment Method](https://github.com/user-attachments/assets/5357bbe8-f492-4629-ac2c-4f1e4a2aaf77)

- **Report #4**: Comparison of books sold by each language (Performance of each language).

  
![Performance of Language Report](https://github.com/user-attachments/assets/1203e40b-e2f3-4621-a1d2-70c43d453907)

## Conclusion
I had great joy extracting the data and transforming it to uncover deep relationships and business insights. This project allowed me to utilize the power of MSSQL Server, SSIS, SSAS, and SSRS. Feel free to open a PR and contribute to this project. It has a lot of potential for hard-working data-driven enthusiasts. You will find the complete solution in the repo. 😉
