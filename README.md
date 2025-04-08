# Library Management System Database Project

This repository contains the complete implementation of a **Library Management System** developed for the course **CMPT 354 - Database Systems I** at **Simon Fraser University**. The system integrates core library operations, including catalog management, borrowing, event hosting, personnel tracking, and more. The project is structured to handle various aspects of library management, from item tracking to user interactions, such as borrowing, volunteering, and attending events.

## Features

- **Library Item Management**: Manage diverse library items such as books, e-books, journals, magazines, and media.
- **Borrowing System**: Track borrowing and returns with automatic due date calculations and fine assessments.
- **Event Hosting**: Manage library events such as book clubs, workshops, and screenings with member registrations.
- **User Management**: Handle member, staff, and volunteer data, including roles and activities.
- **Help and Acquisition Requests**: Allow users to request library items and submit help requests.

## Technologies

- **SQLite**: For database management and storage.
- **Python**: For developing the application logic and user interface.
- **Git**: For version control and collaboration.
- **GitHub**: For project hosting and sharing.

## Project Structure

Library-Management-System ├── docs/ │ └── mp.pdf # Project report documentation ├── database/ │ ├── schema.sql # SQL schema for the database │ ├── sample_data.sql # Sample data for populating the database │ ├── initialize-db.py # Python script for initializing the database │ └── library.db # SQLite database file ├── src/ │ └── library-app.py # Python application to interact with the library system ├── screenshots/
│ ├── code-run-1.png # Screenshot of code execution │ ├── code-run-2.png # Screenshot of event management │ └── code-run-3.png # Screenshot of logout functionality └── README.md # This README file

markdown
Copy

## How to Run

1. **Initialize the Database**:
   - Ensure that you have Python and SQLite installed.
   - Run the `initialize-db.py` script to create the database and populate it with initial data.
   
   ```bash
   python initialize-db.py
Run the Application:

Once the database is set up, run the main application:

bash
Copy
python library-app.py
Interact with the System:

The application provides options to log in as a member or staff, borrow items, register for events, and more.

Database Schema:

The schema.sql file defines the database structure, including tables for members, staff, items, events, and more.

The sample_data.sql file provides sample records to test the system.


Contributors
Pranay Ratan (301581340)

Yogya Agrawal

Acknowledgements
Special thanks to the following resources and individuals for their contributions to this project:

Database Systems: The Complete Book, 2nd Edition by Hector Garcia-Molina, Jeffrey D. Ullman, Jennifer Widom

Database System Concepts, 7th Edition by Avi Silberschatz, Henry F. Korth, S. Sudarshan

CMPT 354 Course Resources at Simon Fraser University for their guidance and teaching materials.

License
This project is licensed under the MIT License - see the LICENSE.md file for details.

pgsql
Copy

This format will ensure your **README.md** is properly structured, clean, and easy to follow. You can copy and paste this into your repository's README file.
