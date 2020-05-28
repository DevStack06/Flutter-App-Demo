const express = require("express");

const port = process.env.port || 5000;
const app = express();

app.route("/").get((req, res) => res.json("hello world !"));

app.listen(port, () => console.log(`welcome your listinnig at port ${port}`));
