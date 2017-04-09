// requirements
var express = require("express");

var app = express();

// set view engine to be ejs
app.set("view engine", "ejs");

// use public directory for static files
app.use(express.static(__dirname + "/public"));

// root path, homepage
app.get("/", function(req, res) {
	res.render("landing.ejs");
});

// listen for connections
app.listen(4000, function() {
	console.log("Grading app server running on port 4000");
});