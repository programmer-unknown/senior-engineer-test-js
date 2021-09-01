const express = require("express");
const cors = require("cors");
const db = require("./models");
require("dotenv").config();
const main = async () => {
  const app = express();
  app.use(express.json());
  app.use(cors());
  const PORT = process.env.PORT || 3001;
  app.get("/", (req, res) => {
    res.json({ message: "Hello Orenda" });
  });
  const Jobs = require("./routes/Jobs");
  app.use("/api/jobs", Jobs);
  db.sequelize.sync().then(() => {
    app.listen(PORT, () => {
      console.log(`"Server is Running on Port ${PORT}`);
    });
  });
};
main().catch((err) => {
  console.log(err);
});
