# Taxi-service app

This is a simple application of the driver’s registration system. The driver can log in and view all information about available cars and drivers assigned to them. Basic CRUD operations are available. A new driver can register in the system.

The project has an N-tier structure and consists of the database layer, the DAO layer for interaction with the database, the service layer which contains the business logic, and the presentation layer.

#Technologies Used:
- Java 11
- Maven 3.1.1
- Maven Checkstyle Plugin
- Javax Servlet API 3.1.0
- JSTL 1.2
- JSP
- Apache Tomcat
- MySQL RDBMS
- DI(custom injector)

#Running the Project:

- To run the project on your local machine, clone this project into your local folder and open the project in an IDE.
- Configure Tomcat Server and set up the MySQL DS and MySQL Workbench on your machine.
- Replicate the database from the project by copying the script from init_db.sql into the MySQL Workbench query editor window.
- Insert your own MySQL username and login in dbProperties in the ConnectionUtil class.
- Your MySQL server must be up and running when you launch the project.
- When you launch the website for the first time, click on "Register" to add the driver to the DB.
