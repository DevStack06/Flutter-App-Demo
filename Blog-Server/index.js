const express = require("express");
const app = express();

const Port = process.env.port || 5000;

app.route("/").get((req, res) => res.json("your first rest api 2"));

app.listen(Port, () => console.log(`you server is running on port ${Port}`));
