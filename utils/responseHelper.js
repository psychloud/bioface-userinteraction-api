// utils/responseHelper.js
module.exports = {
  successResponse: (res, message, data) => {
    res.status(200).json({
      status: 'success',
      message,
      data
    });
  },
  errorResponse: (res, message, statusCode = 500) => {
    res.status(statusCode).json({
      status: 'error',
      message
    });
  }
};
