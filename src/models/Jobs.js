module.exports = (sequelize, Datatypes) => {
  const Jobs = sequelize.define(
    "jobs",
    {
      title: {
        type: Datatypes.STRING,
        allowNull: false,
        validate: {
          notEmpty: true,
        },
      },
      remarks: {
        type: Datatypes.STRING,
        allowNull: false,
        validate: {
          notEmpty: true,
        },
      },
      job_date: {
        type: Datatypes.STRING,
        allowNull: false,
        validate: {
          notEmpty: true,
        },
      },
      start_time: {
        type: Datatypes.STRING,
        allowNull: false,
        validate: {
          notEmpty: true,
        },
      },
      end_time: {
        type: Datatypes.STRING,
        allowNull: false,
        validate: {
          notEmpty: true,
        },
      },
    },
    {
      // don't add the timestamp attributes (updatedAt, createdAt)
      timestamps: false,

      // If don't want createdAt
      createdAt: false,

      // If don't want updatedAt
      updatedAt: false,

      // your other configuration here
    }
  );
  return Jobs;
};
