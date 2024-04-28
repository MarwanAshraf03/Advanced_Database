const express = require('express');
const mysql = require('mysql');

const app = express();
const port = 3000;

const connection = mysql.createConnection({
    host: 'localhost',
    port: 3307,
    user: 'root',
    // password: 'root',
    database: 'hospital'
});

// Route to fetch patient data
app.get('/patients', (req, res) => {
    connection.query('SELECT * FROM Patient', (error, results) => {
        if (error) throw error;
        res.json(results);
    });
});

// Serve static files
app.use(express.static('public'));

// Start the server
app.listen(port, () => {
    console.log(`Server running on port ${port}`);
});
