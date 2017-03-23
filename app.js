// requirements
var express = require("express");

var app = express();

// set view engine to be ejs
app.set("view engine", "ejs");

// root path, homepage
app.get("/", function(req, res) {
	res.render("landing.ejs");
});

// listen for connections
app.listen(4000, function() {
	console.log("Grading app server running");
});