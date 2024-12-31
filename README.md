# Online Notes Project

The **Online Notes** project is a web-based application designed to help users manage their notes efficiently. Built using **Java**, **MySQL**, **JDBC**, **Servlet**, **JSP**, **HTML**, and **CSS**, this project ensures a smooth and user-friendly experience.

## Features

- **Login and Signup Page**  
  A secure user authentication system for new and returning users.

- **Home Page**  
  A dashboard where users can add new notes with titles and descriptions.

- **Show Notes Page**  
  Displays all the saved notes, with options to update or delete them. Users can view the content and make necessary changes to their notes.

## Technology Stack

- **Backend**: Java, JDBC, Servlet, JSP  
- **Frontend**: HTML, CSS  
- **Database**: MySQL  

## Description

The application leverages **MySQL** as the database for storing user and note data, while **JDBC** facilitates the connection between the front-end and back-end. The user interface is designed with **HTML** and **CSS** to provide seamless navigation and interaction.

This project is an excellent tool for organizing notes efficiently and is ideal for demonstrating core web development and database management skills.

## How to Run the Project

Follow these steps to set up and run the Online Notes project:

### Prerequisites
1. **Java Development Kit (JDK)**: Ensure JDK is installed and properly configured on your system.
2. **Apache Tomcat Server**: Install Apache Tomcat or any other Java-based web server.
3. **MySQL**: Install MySQL and set up a database for the project.
4. **IDE**: Use an IDE such as IntelliJ IDEA, Eclipse, or NetBeans for Java development.

### Steps to Run
1. **Clone the Repository**  
   Clone the project repository to your local system or download it as a ZIP file.

2. **Set Up the Database**  
   - Open MySQL and create a database (e.g., `notes_db`).
   - Import the provided SQL file (if available) or create the necessary tables manually:
     ```sql
     CREATE TABLE users (
         id INT AUTO_INCREMENT PRIMARY KEY,
         username VARCHAR(50) NOT NULL,
         password VARCHAR(255) NOT NULL
     );

     CREATE TABLE notes (
         id INT AUTO_INCREMENT PRIMARY KEY,
         user_id INT NOT NULL,
         title VARCHAR(100),
         description TEXT,
         FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE
     );
     ```

3. **Configure Database Connection**  
   - Open the project in your IDE.
   - Navigate to the database connection file (e.g., `DBConnection.java` or equivalent).
   - Update the database URL, username, and password to match your MySQL setup:
     ```java
     String url = "jdbc:mysql://localhost:3306/notes_db";
     String username = "your_mysql_username";
     String password = "your_mysql_password";
     ```

4. **Deploy the Project**  
   - Build the project in your IDE.
   - Deploy the compiled `.war` file to the `webapps` folder of your Tomcat server.
   - Start the Tomcat server.

5. **Access the Application**  
   - Open your web browser and navigate to `http://localhost:8080/OnlineNotes` (replace `OnlineNotes` with your project name if different).
   - Use the signup page to create an account and start managing your notes.

### Note
- Ensure your MySQL server is running before starting the application.
- If you encounter any issues, check the server logs or console output for error messages.
