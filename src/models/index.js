const Sequelize = require("sequelize");
const dbConfig = require("../config/dbConfig");
const sequelize = new Sequelize(
  dbConfig.database,
  dbConfig.user,
  dbConfig.password,
  {
    host: dbConfig.host,
    dialect: dbConfig.dialect,
  }
);

const db = {};

db.Sequelize = Sequelize;
db.sequelize = sequelize;

db.jobs = require("./Jobs")(sequelize, Sequelize);

module.exports = db;
