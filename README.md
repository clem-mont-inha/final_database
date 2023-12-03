# Flight Management System

## Overview

This Python script establishes and populates tables in an SQLite database named `final.db` to simulate a Flight Management System. The database includes tables for passengers, airlines, aircraft, crew members, airports, flights, baggage, and bookings. Additionally, it incorporates several advanced queries using SQL to extract meaningful insights from the data.

## Prerequisites

- Python environment
- SQLite3 library
- Pandas library
- Faker library

## Relationships

![image](https://github.com/antoinevangorp/final_project_db/blob/main/screen.png?raw=true)

## Instructions

### Database Setup

The script connects to SQLite and creates a database named `final.db` if it does not already exist.

### Table Creation

The script defines tables for passengers, airlines, aircraft, crew members, airports, flights, baggage, and bookings. It also establishes necessary foreign key constraints between these tables.

### Data Insertion

Sample data is inserted into the tables, providing a foundation for demonstration. The number of records for each table is customizable by adjusting the corresponding variables.

### Query Examples

1. **Ranking Flights by Price:** Utilizes the RANK() window function to rank flights based on their prices.


2. **Average Price per Airline:** Calculates the average price for each airline using the ranked flights.

3. **Baggage Count per Flight:** Counts the number of baggage items for each flight.

4. **Flight Information Overview:** Retrieves comprehensive flight information, including average price, baggage count, departure city and date, arrival city and date, and airline name.

5. **List of Adult Passengers with Flights:** Prints adult passengers (age >= 18) ordered by the number of flights taken.

6. **Final Destination of Baggage:** Prints the final destination of each baggage item, involving complex joins.

7. **Rank Companies by Aircraft Count:** Ranks companies based on the number of aircraft they own.

8. **Airlines Flown by a Passenger:** Selects distinct airlines flown by a specific passenger.

9. **Flights Count per Company:** Prints the number of flights for each airline.

10. **Total Money Spent per Passenger:** Prints the total amount of money spent by each passenger in descending order.

11. **Passenger and Departure Location:** Retrieves information about passengers and their departure locations.

12. **Remaining Seats on Flights:** Calculates the remaining and taken seats on each flight.

13. **Aircraft and Airport Information:** Retrieves information about aircraft, including their ID, model, company, and the airport they are stationed at.

14. **Total Baggage Weight per Flight:** Calculates the total weight of baggage on each flight.

15. **Aircrafts Not Assigned to Flights:** Retrieves information about aircraft that are not assigned to any flight.

## Contributors

- [Cyprien SINGEZ]
- [Antoine VAN GORP]
- [Clément Monteiro]
- [Mahé Faure]

## Note

Please review and customize the script based on your specific requirements and use cases. Ensure you have the necessary permissions and backups before executing database operations.