# Job Market Data Analysis

![dash01](https://github.com/user-attachments/assets/0daa8312-b635-4eb4-8b97-e8618be64b84)

## Background & Overview
This project provides an in-depth analysis of the **Canadian job market** trends for data-related roles. The dataset, collected from **Glassdoor**, includes job postings from **January 1–31, 2025**, covering six key roles:      
- 💼 **Business Analyst**
- 📈 **Data Analyst**
- 🛠️ **Data Engineer**
- 🤖 **Data Scientist**
- ☁️ **Cloud Engineer**
- 🧠 **Machine Learning (ML) Engineer**

The analysis utilizes **SQL** and **Power Query** for data extraction and transformation and **Excel** for visualization through an **interactive dashboard**.

## Data Structure Overview  
The dataset was manually extracted from Glassdoor to ensure high accuracy and structured formatting, avoiding limitations associated with automated scraping. AI-driven categorization was then applied to classify job attributes, including:

- 🔹 **Job Title**  
- 💰 **Salary**  
- 📍 **Location**  
- 🏢 **Company**  
- 💻 **Work Mode**  
- 📅 **Posting Date**  
- ⏰ **Job Schedule**  
- 📈 **Job Level**  
- 🛠️ **Required Skills**

This hybrid approach—combining human oversight with AI-driven tagging—ensured data integrity, reduced inconsistencies, and created a well-structured dataset. The result is a comprehensive dataset representing the Canadian job market for data professionals as of January 2025.

## Executive Summary
An analysis of **2,385 job postings** from January 2025 uncovers key trends in the data-related job market:
- **Most In-Demand Roles**:
  - **Business Analysts** (36.3%) & **Data Analysts** (29.5%) are the most in-demand roles, reflecting their accessibility and widespread industry applications.

- **Salary Highlights**:  
  - Business and Data Analysts earn **lower salaries**, reflecting fewer technical skill requirements, though they are in high demand.
  - Cloud and ML Engineers earn the **highest salaries** due to the advanced skills and experience needed.

- **Top Technical Skills**:  
  - **SQL**, **Python**, and **Excel** are in high demand.  
  - **Azure**, **AWS**, and **Power BI** are critical for gaining a competitive edge.

- **Geographical Trends**:  
  - **Ontario** leads in job postings, followed by **Quebec** and **British Columbia**.  
  - Key **hiring hubs**: **Toronto**, **Montreal**, and **Vancouver**.
  
- **Dominant Employers**:  
  - The **financial sector** is a major employer, with **TD**, **Scotiabank**, **RBC**, and **CIBC** leading the way. These companies are heavily investing in **data**, **cloud**, and **ML** expertise.

- **Role-Level Distribution**:  
  - **Mid and senior-level positions dominate** in analyst roles.  
  - **Engineering & Data Science** roles are more competitive at entry-level, reflecting a higher barrier to entry.

- **Work Mode**:  
  - Hybrid work is on the rise (57%), but **fully remote roles** remain scarce at only 6%.


## Insights Deep Dive 
### Role Demand 

This section provides a breakdown of the demand for each studied role within the data sector.  
- **Business Analysts** lead the demand with **36.3%**, highlighting their crucial role in bridging business objectives and technical solutions.  
- **Data Analysts** follow closely with **29.5%**, indicating a strong need for professionals who can gather, interpret, and analyze data.  
- **Data Engineers** are in demand at **10.9%**, reflecting the growing need for experts in building and maintaining robust data architectures.  
- **Data Scientists** and **Cloud Engineers** both have a demand share of **9.1%**, showcasing the importance of advanced analytics and cloud-based infrastructure expertise.  
- **ML Engineers** account for **5.2%**, underscoring the specialized demand for those developing AI models.  

### Salary Trends
<img src="https://github.com/user-attachments/assets/0240bcb4-c74d-4cde-8745-b1238d0cd4fd" alt="Dash08 Box Whisker" width="60%">  
  

Based on the box-and-whisker chart, the following key information emerges:  
- The **median salary** for **Machine Learning Engineers** is the highest at **108000**, reflecting the demand for specialized AI skills.  
- **Cloud Engineers** and **Data Scientists** follow closely with median salaries of **105500** and **103500**, highlighting the value of cloud management and advanced analytics expertise.  
- **Data Engineers** earn a competitive median salary of **103000**, indicating the importance of building and managing data pipelines.  
- **Business Analysts** and **Data Analysts** have lower median salaries of **83000** and **78000**, respectively, suggesting that these roles, while in high demand, require less specialized technical skills.  
- The chart shows a **significant spread in salaries**, especially for **Data Scientists** and **ML Engineers**, pointing to opportunities for higher earnings based on experience and specialization.  
- The presence of **outliers** suggests that top-tier professionals can earn **substantially above the median** in roles like Data Scientist and ML Engineer.  
- Overall, the salary distribution emphasizes the **financial benefits of acquiring advanced technical skills** and specializing in fields such as **machine learning** and **cloud computing**.  


### Skills Demand  
![Dash05](https://github.com/user-attachments/assets/2f446d62-5561-47ad-a374-46cef119b847)

- Across all job postings, **SQL, Python, Excel**, and **Power BI/Tableau** emerge as the most sought-after skills, forming the foundation for data-related roles. 
- Breaking down skill requirements further:  
  - **SQL-based databases** dominate, with **SQL Server, PostgreSQL,** and **MySQL** leading in demand.  
  - **NoSQL databases** like **MongoDB** are relevant for scalable applications.  
- In programming:  
  - **SQL** and **Python** remain essential, followed by **R** for statistical analysis.  
- Cloud proficiency extends beyond standard platforms like **AWS, Azure,** and **Google Cloud Platform (GCP)** to include specialized tools such as **Databricks** and **Snowflake**, which are crucial for big data processing and cloud-based analytics.  
- **Visualization** remains a key focus, with **Power BI's** Microsoft integration and **Tableau’s** flexibility making both tools essential for data professionals.

### Geographical Distribution Across Cities & Provinces
![Dash03](https://github.com/user-attachments/assets/f38198bb-6556-44ae-8065-a622e5ff2a4f)

- The geographical distribution of job postings reveals a strong concentration in **Ontario**, with **Toronto** alone accounting for **923** postings, significantly outpacing other cities.  
- **Ontario** leads among provinces with **1435** postings, highlighting its prominence as a hub for data-related roles.  
- **Quebec** and **British Columbia** follow, with **254** and **246** postings respectively, indicating substantial demand in these regions.  
- In Alberta, **184** postings were recorded, showing a moderate but notable presence in the data job market.  
- Other provinces like **Manitoba, Nova Scotia,** and **Saskatchewan** exhibit limited but existing opportunities.  
- Among cities, **Montreal (185)**, **Vancouver (146)**, **Mississauga (146)**, and **Calgary (114)** emerge as key markets outside of Toronto.  

### Top Employers & Industry Trends  
<img src="https://github.com/user-attachments/assets/9f7a05fb-9157-4369-9760-eb1cc3b09453" alt="Dash08 Box Whisker" width="35%">

- The top recruiters in the data and technology job market include **TD**, **Scotiabank**, **RBC**, and **CIBC**.
- These major Canadian banks are not only prominent players in the banking industry but also leading employers in the tech sector, reflecting their substantial investments in **data**, **cloud**, and **machine learning** expertise.
- Their strong focus on **digital transformation** creates a wealth of career opportunities for skilled professionals.
- Job seekers targeting these organizations can expect to engage in innovative projects and gain experience with cutting-edge technologies in a dynamic, fast-paced environment.

### Career Entry & Progression  
<img src="https://github.com/user-attachments/assets/d3d19bc9-aaef-4ce6-95fb-f363a578341e" alt="Dash08 Box Whisker" width="55%">

- Analyst roles (BA & DA) are the **most accessible**, with demand concentrated at Mid and Senior levels, while Engineering and Data Science positions have **fewer entry-level opportunities**, indicating a higher barrier to entry.  
- Analyst roles have lower barriers to entry, while Engineering and Data Science positions demand more specialized expertise.  

### Work Model Breakdown
![Dash10 Work Option](https://github.com/user-attachments/assets/d5ffcef9-b074-4e63-b21f-3d42458aa694)

- **Hybrid work**: 57% of the workforce, offering a blend of in-person and remote work.
- **In-person roles**: 37% of the positions, reflecting a strong presence in traditional office environments.
- **Fully remote roles**: 6% of the works, relatively rare but growing.  
This distribution emphasizes the company’s preference for a hybrid work structure while maintaining a small but growing remote workforce.

## Recommendations
### For Job Seekers  
✅ Prioritize SQL, Python, and cloud computing (Azure, AWS) to maximize employability in Canada’s competitive job market.  
✅ Business and Data Analyst roles offer easier entry points, while ML and Cloud Engineering require more specialized training.   
### For Employers    
✅ Expanding remote work opportunities could help attract a larger talent pool, especially for highly skilled roles.  
✅ Offering more entry-level and internship roles in Engineering and Data Science would help build a sustainable pipeline of talent.    
### For Career Planning    
✅ Developing expertise in visualization tolls and database systems will enhance job prospects in data analysis and business intelligence roles.  
✅ Experience with Snowflake, Databricks, and cloud platforms will set candidates apart for engineering and cloud roles.  

