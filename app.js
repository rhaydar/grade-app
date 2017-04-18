// Global Parameters
const PORT = 4000;

// requirements
var express = require("express"),
	bodyParser = require("body-parser"),	//for parsing body of HTML to get form inputs
	bcrypt = require("bcryptjs"),	//for encrypting and decrypting password
	mysql = require("mysql");	//for MySQL database connection

// get password from command line arguments
var pw = process.argv[2];

// configure MySQL database connection
var connection = mysql.createConnection({
	host: "localhost",
	user: "rashedul",
	password: pw,
	database: "york_grade_app"
});

// initiate MySQL database connection
connection.connect(function(err) {
  if (err) {
    console.error('error connecting: ' + err.stack);
    return;
  }
});

// initialize express server program
var app = express();

// set view engine to be ejs
app.set("view engine", "ejs");

// use public directory for static files
app.use(express.static(__dirname + "/public"));

// use body-parser
app.use(bodyParser.urlencoded({extended: true}));

// root path, homepage
app.get("/", function(req, res) {
	res.render("landing.ejs");
});

app.post("/login", function(req, res) {
	var username = req.body.username;
	var pw = req.body.password;
	connection.query("SELECT password, salt FROM user WHERE username= ?", [username], function(err, rows, fields) {
		if (err) {
			console.log(err);
		}
		else {
			var hash = bcrypt.hashSync(pw, rows[0].salt);
			if (hash === rows[0].password) {
				res.send("Password matched!");
			}
			else {
				res.send("Incorrect password");
			}
		}
	});
});

// listen for connections
app.listen(PORT, function() {
	console.log("Grading app server running on port 4000");
});