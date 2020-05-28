const express = require("express");
const mongoose = require("mongoose");

mongoose.connect("mongodb://localhost:27017/myapp", { useNewUrlParser: true });

const connection = mongoose.connection;
connection.once("open", () => {
  console.log("MongoDb connected");
});

const port = process.env.port || 5000;
const app = express();

app.route("/").get((req, res) => res.json("hello world !"));

app.listen(port, () => console.log(`welcome your listinnig at port ${port}`));
