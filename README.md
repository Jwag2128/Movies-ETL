# Movies-ETL

![Movie](https://user-images.githubusercontent.com/106286533/207647767-5881e3da-7edd-4016-a5a6-1affd2e9cd5d.jpg)

## Overview

### The purpose of this analysis was to use Extract, Transform, Load(ETL) on data from Wikipedia, Kaggle and Movie Lens. An automated pipeline was created to take in the data, perform cleaning functions and transform the data, then finally load it into tables and connect to a SQL database.

## Summary

### JSON files containing movie production information and ratings were imported using python and the datasets were cleaned and combined.  Using SQl Alchemy, a database was created and files stored as tables within the database.

![create_sql_db](https://user-images.githubusercontent.com/106286533/207650575-2c063eb1-2889-452c-852b-a04a9335c005.png)

### With the data in SQL tables, queries were run to filter the data into 3 additional tables.

Movies by Distributor

![image](https://user-images.githubusercontent.com/106286533/207651407-566ac596-6cdc-4fc0-ac53-b906fe0f9181.png)

![movies_by_dist](https://user-images.githubusercontent.com/106286533/207651218-c59e663e-a0c5-4b24-9c60-f1e564d59d36.png)

Movies by Year

![image](https://user-images.githubusercontent.com/106286533/207651594-1b6cb11c-1566-43b8-bffe-01dc73f0386c.png)

![image](https://user-images.githubusercontent.com/106286533/207651751-f74737ab-0088-47fd-8c29-d51168586b1b.png)

Movies by Runtime

![runtime_code](https://user-images.githubusercontent.com/106286533/207651983-15cc543a-38b7-47bd-8614-78bef9a5a2e1.png)

![movies_by_runtime](https://user-images.githubusercontent.com/106286533/207651247-7407a939-a012-40c5-928f-c45cc385d1fb.png)
