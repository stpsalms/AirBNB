# AirBNB
https://www.kaggle.com/datasets/thedevastator/airbnb-price-determinants-in-europe

This dataset contains Airbnb rental data for European cities, including characteristics and their effects on price. The dataset includes several features such as the total price of the listing, room type, host status (superhost or not), amenities, and location information which can be used to analyze the factors that affect Airbnb prices. This data can help travelers find an accommodation that satisfies their needs without spending more than necessary. It can also provide business owners valuable insights on how to set competitive prices and optimize their listings for increased bookings. Furthermore, this data is useful for property investors who want to understand pricing trends in different cities across Europe and make informed decisions about investing in real estate

More Datasets
For more datasets, click here.

Featured Notebooks
🚨 Your notebook can be here! 🚨!
How to use the dataset
This dataset contains Airbnb rental data for multiple European cities, including price, room type, host status, amenities and location information. This data can be used to better understand the factors that influence Airbnb rental prices in Europe.

The columns of the dataset include:

realSum (total price of the listing)

room_type (type of room offered such as private/shared/entire home/apt)

room_shared (whether or not the room is shared)

person_capacity (maximum number of people allowed in the property)

host_is_superhost(whether or not the host is a superhost) (boolean value so either true or false)

multi (whether it’s for multiple rooms or not)

biz(whether it’s for business use or family use )                                 .                                                               
dist(the distance from city center )
metro dist (the distance from nearest metro station )                             
lng(longitude value ) lat(latitude value ) guest satisfaction overall () Cleanliness rating () Bedrooms () and Real sum -Total Price.







Project Description
The dataset has weekday and weekend files for different cities 
Here is the data and description for the ArBnB project in PowerBI. The way we should proceed with this project is to first create a table in SQL, and load the data into the SQL table. Then proceed to connect your SQL data tables with PowerBI for analysis and visualization.
The dataset has weekday and weekend files for different cities. So you should have two tables, one for weekdays and the other for weekends. Load all the weekday files into the weekday table, and mark which data is for which country. Do the same for the weekend. Then create a single view that will merge the weekday and weekend tables into one Table. In this view, make sure to have a column that specifies if a row is from the weekend or weekday file. This single view is what should load into PowerBi for your analysis.

