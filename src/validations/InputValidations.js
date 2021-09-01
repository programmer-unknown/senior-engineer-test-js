const { body } = require("express-validator");
const jobsValidation = [
  body("*.title", "Title is required").not().isEmpty(),
  body("*.remarks", "Remarks is required").not().isEmpty(),
  body("*.job_date", "Job Date is required").not().isEmpty(),
  body("*.start_time", "Start Time is required").not().isEmpty(),
  body("*.end_time", "End Time is required").not().isEmpty(),
];

module.exports = jobsValidation;
