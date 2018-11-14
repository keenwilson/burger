// *********************************************************************************
// CONNECTION.JS - THIS FILE INITIATES THE CONNECTION TO MYSQL
// *********************************************************************************

// Dependencies
/* require('dotenv').config(); */

// Set up MySQL connection.
const mysql = require("mysql");

const PORT = process.env.PORT || 3306;

const connection = mysql.createConnection({
  host: "localhost",
  port: PORT,
  user: "root",
  password: process.env.DATABASE_PASSWORD,
  database: "burgers_db"
});

// Make connection.
connection.connect(function(err) {
  if (err) {
    console.error("error connecting: " + err.stack);
    return;
  }
  console.log("connected as id " + connection.threadId);
});

// Export connection for our ORM to use.
module.exports = connection;
