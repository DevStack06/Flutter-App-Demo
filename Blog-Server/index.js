const express = require("express");
const mongoose = require("mongoose");

mongoose.connect("mongodb://localhost:27017/AppDB", { useNewUrlParser: true });

const connection = mongoose.connection;
connection.once("open", () => {
  console.log("MongoDb connected");
});

const port = process.env.port || 5000;
const app = express();

//middleware
app.use(express.json());
const user = require("./routes/user");
app.use("/user", user);

app.route("/").get((req, res) => res.json("hello world !"));

app.listen(port, () => console.log(`welcome your listinnig at port ${port}`));
