# Contact Form

A simple contact form that allows users to submit their name and email. The submitted data is stored in a MySQL database.

## Table of Contents

- [Description](#description)
- [Installation](#installation)
- [Usage](#usage)


## Description

The project consists of two main files:

- `index.html`: This file contains the HTML structure of the contact form.
- `submit.php`: This file handles the form submission, connects to the MySQL database, and stores the submitted data.

## Installation

To set up and run the project locally, follow these steps:

1. Clone the repository:
git clone https://github.com/ahmed-mahmoud-mongey/


2. Configure the database connection details in `submit.php` by updating the `$servername`, `$username`, `$password`, and `$dbname` variables.

3. Create a MySQL database named `contacts` (or use an existing one).

4. Import the necessary database structure by executing the following SQL command:
```sql
CREATE TABLE contactstable (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL
);


```
## Usage


1. Access the index.html file through a web browser.
2. Fill out the form fields with your name and email address.
3. Click the "Submit" button to submit the form.
4. The form data will be stored in the contactstable table in the MySQL database using submit.php.
5. If the submission is successful, you will see a message indicating that the data was inserted successfully. Otherwise, an error message will be displayed.

