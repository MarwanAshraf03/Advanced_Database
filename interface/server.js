const express = require('express');
const mysql = require('mysql');
const bodyParser = require('body-parser');

const app = express();
const port = 3000;

const connection = mysql.createConnection({
    host: 'localhost',
    // port: 3306,
    port: 3307,
    user: 'root',
    // password: 'root',
    database: 'hospital'
});

app.use(bodyParser.json());
// Route to fetch patient data
app.get('/patients', (req, res) => {
    connection.query('SELECT * FROM Patient', (error, results) => {
        if (error) throw error;
        res.json(results);
    });
});

app.post('/patient-add', (req, res) => {
    // Extract data from the request body
    const { name, address, birth_date, ph_number, number_of_days, room_id } = req.body;

    // Construct SQL query to insert data into the database
    const sql = `INSERT INTO Patient (name, address, birth_date, ph_number, number_of_days, room_id) VALUES (?, ?, ?, ?, ?, ?)`;
    const values = [name, address, birth_date, ph_number, number_of_days, room_id];

    // Execute the SQL query
    connection.query(sql, values, (error, results) => {
        if (error) {
            console.error('Error inserting patient data:', error);
            res.status(500).json({ message: 'Error adding patient to the database' });
        } else {
            console.log('Patient added successfully:', results);
            res.status(200).json({ message: 'Patient added successfully' });
        }
    });
});

app.post('/patient-edit', (req, res) => {
    // Extract data from the request body
    const { id, name, address, birth_date, ph_number, number_of_days, room_id } = req.body;

    // Construct SQL query to insert data into the database
    const sql = `UPDATE patient SET name = ?, address = ?, birth_date = ?, ph_number = ?, number_of_days = ?, room_id = ? WHERE id = ?;`;
    const values = [name, address, birth_date, ph_number, number_of_days, room_id, id];

    // Execute the SQL query
    connection.query(sql, values, (error, results) => {
        if (error) {
            console.error('Error editing patient data:', error);
            res.status(500).json({ message: 'Error editing patient to the database' });
        } else {
            console.log('Patient edited successfully:', results);
            res.status(200).json({ message: 'Patient edited successfully' });
        }
    });
});

app.post('/patient-remove', (req, res) => {
    // Extract data from the request body
    const { id } = req.body;

    // Construct SQL query to insert data into the database
    const sql = `DELETE FROM patient WHERE id = ?`;
    const values = [id];

    // Execute the SQL query
    connection.query(sql, values, (error, results) => {
        if (error) {
            console.error('Error deleting patient data:', error);
            res.status(500).json({ message: 'Error deleting patient to the database' });
        } else {
            console.log('Patient deleted successfully:', results);
            res.status(200).json({ message: 'Patient deleted successfully' });
        }
    });
});

// Serve static files
app.use(express.static('public'));

// Start the server
app.listen(port, () => {
    console.log(`Server running on port ${port}`);
});
