const express = require("express");
const router = express.Router();
const { jobs } = require("../models");
const jobValidation = require("../validations/InputValidations");
const validationResult = require("../validations/ValidationResult");
router.post("/", jobValidation, validationResult, (req, res) => {
  jobs
    .bulkCreate(req.body)
    .then(() => {
      res.status(204).send();
    })
    .catch((err) => {
      console.log(err);
    });
});

module.exports = router;
