# IBM Data Science Certificate Final Project - SpaceX Launch

## Description
In this project, we will forcast if the Falcon 9 first stage will successfully land. 
* You will find answers to the following problems:
  * What factors determine whether or not the rocket lands successfully?
  * The influence that each relationship with specific rocket characteristics will have on the success rate of a successful landing.
  * What requirements must SpaceX meet in order to obtain the greatest results and ensure the highest rate of rocket landing success?

## Data
* The data was collected from:
  * Collect SpaceX launch data from SpaceX API
  * Another approach of data collecting is web scraping using BeautifulSoup Package

## Methodology and Tools
* EDA
  * SQl to list filtered dataframes
  * Executed SQL to display filtered tables, better understanding the dataset
  * Built Interactive Maps with Folium
  * Summarized findings using an Interactive dashboard with Plotly Dash
* Predictive Analysis (Classification) 
  * BuildingModel
    * Create a NumPy array from the column Class
    * Standardize the data in X then reassign it to X
    * Split the data X and Y into training and test data
    * Create a logistic regression object then create a GridSearchCV object
    * Create a support vector machine object then create a GridSearchCV object
    * Create a decision tree classifier object then create a GridSearchCV object
    * Create a k nearest neighbors object then create a GridSearchCV object
* Evaluation Metrics
  * Acuracy Score
  * Confusion Matrix
## Findings and Conclusions
* GEO, HEO, SSO, ES-L1 has the top 4 success rate.
* Tree Classification Model is the best for Machine Learning & Predictive
Analysis
* KSC LC-39A had the top 1 successful launches among all sites
* Low weighted payloads performs better
* The success rate of SpaceX launches is directly proportional to the period in years it will take them to perfect the launches.
