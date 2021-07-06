# Taxi-service app

This is a simple application of the drivers registration system. The system user is the driver. The driver can sign up and if he already signed up - sign in. The driver can view all information about available cars and drivers assigned to them. Basic CRUD operations are available.

The project has an N-tier structure and consists of the database layer, the DAO layer for interaction with the database, the service layer which contains the business logic, and the presentation layer.

# Functionality
- Create a new user without signing in with the "Register" button (the user is the driver).
- Login the driver. When invalid login or password we get an "Error" message on our web page.
- Show all drivers and drivers info. Here we can delete the driver from DB. When deleting driver - the driver is unassigning from all cars.
- Show all manufacturers and manufacturers info. Here we can delete the manufacturer from DB.
- Show all cars and cars info. Here we can delete the car from DB. When deleting the car - all drivers are unassigning from this car.
- Show all assigned cars for the signed-in driver.
- Add new manufacturer. Also, here we see a list of all manufacturers for convenience.
- Add a new car. Also, here we see a list of all cars for convenience.
- Add a new driver. Here we get the "Success" message on our web page when successfully add the new driver to DB.
- Assign drivers to cars. Also, here we see a list of all cars and drivers for convenience.
- Also, we have a header with "Home" and "Logout" buttons.

# Technologies Used:
- Java 11
- Maven 3.1.1
- Maven Checkstyle Plugin
- Javax Servlet API 3.1.0
- JSTL 1.2
- JSP
- JDBC
- Apache Tomcat
- MySQL RDBMS
- DI(custom injector)
- Log4j2

# Running the Project:

- To run the project on your local machine, clone this project into your local folder and open the project in an IDE.
- Install and configure Local Tomcat Server (set "/" in Deployment - taxi-service:war exploded - Application context).
- To enter the application, use a previously created driver with the login "BigBill" and the password "123". Or create a new driver by clicking on the "Registration" button.
- There is no need to install and configure the DB, an online DB is used.
- In case you want to use your own database, you can run "init_db.sql" from "resources" package and reconfigure "ConnectionUtil" class in "taxi.util" package.
