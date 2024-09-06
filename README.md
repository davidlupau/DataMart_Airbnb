# Creating an Airbnb-like Database: A Learning Journey in Database Design and Implementation

May 2024

This project was completed as part of the Database Design and Implementation module in my BSc. Data Science. It allowed me to gain practical experience in database modeling, SQL, and database management systems while working on a real-world inspired project.

## Context and problem

The project involved developing a comprehensive database for a platform similar to Airbnb, focusing on the core functionalities of property rental and user management. The aim was to design and implement a robust database capable of handling complex relationships between users (guests and hosts), properties, bookings, and financial transactions. This project required a thorough understanding of relational database design principles, normalization techniques, and SQL to create a system that could efficiently store and retrieve data for an online rental marketplace.

## Approach and methodology

The development of the Airbnb-like database followed a structured approach to ensure a comprehensive and efficient solution:

1. **Requirement Analysis**: I began by thoroughly analyzing the Airbnb use case, identifying key entities, relationships, and functionalities required for the platform. This included understanding user roles (guests, hosts, admins), property listings, booking processes, and financial transactions.

2. **Entity-Relationship Modeling (ERM)**: Based on the requirements, I created a detailed Entity-Relationship Model to visualize the database structure. This step involved identifying entities (e.g., users, properties, bookings), their attributes, and the relationships between them.

3. **Normalization**: I applied normalization techniques to the initial database design to eliminate data redundancy and ensure data integrity. This process involved organizing the data into separate tables and establishing relationships to minimize duplication while maintaining data consistency.

4. **Database Management System Selection**: I chose MySQL as the database management system due to its reliability, widespread use, and robust feature set for relational databases.

5. **SQL Implementation**: Using the normalized ERM as a guide, I wrote SQL statements to create the database schema, including tables, primary and foreign keys, and constraints.

6. **Data Population**: I created and inserted dummy data into the database to simulate real-world scenarios and enable thorough testing of the database functionality.

7. **Query Development and Testing**: I developed a set of SQL queries to test various aspects of the database, including data retrieval, updates, and complex joins across multiple tables.

8. **Documentation**: Throughout the process, I maintained detailed documentation of the database design, SQL statements, and test results to ensure clarity and facilitate future maintenance or updates.

## Database overview
- Total size: 0.844 Mb
- Number of tables: 24
- Total number of entries: 714

## Key Features
- User management: the database stores comprehensive information about users then split into profiles for both guests and hosts, encompassing personal details, contact information, and preferences. Additionally, it securely manages user credentials and facilitates social media integration for enhanced user experience.
- Property listings: hosts can create and manage detailed property listings, specifying property types, amenities, house rules, cancellation policies, and availability. This information is crucial for guests to make informed booking decisions.
- Booking and availability management: the database efficiently handles bookings, tracking reservation details, guest information, and financial transactions. It also maintains real-time availability calendars to prevent double bookings and ensure accurate occupancy rates.
- Financial transactions: securely recording and processing payments, refunds, and commission fees are key tasks. The database provides a transparent record of all financial interactions.
- Reviews and ratings: guests and hosts can leave reviews and ratings for each other, fostering trust and transparency within the platform's community. The database aggregates this feedback to showcase property and host reputations.
- Communication and support: the platform facilitates communication between guests and hosts through an internal messaging system. Additionally, it manages support tickets to address user inquiries and resolve disputes effectively.

## Tools used

- MySQL Workbench for database modeling and management
- DataGrip for SQL script editing
- Lucidchart for creating the Entity-Relationship Diagram
- Github Desktop version

## Project links

- [GitHub Repository](https://github.com/davidlupau/DataMart_Airbnb)
- [Entity-Relationship Diagram](https://lucid.app/lucidchart/aab84831-9e52-4543-937c-1a53adb571b9/view?page=0_0#)

This project has been a significant step in my journey towards becoming a proficient database designer and developer. It has reinforced my understanding of relational database concepts and provided me with practical experience that will be invaluable in my future career in data science and software development.

## License
Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so.