const db = require('../config/db');
const { successResponse, errorResponse } = require('../utils/responseHelper');

// get all bio from database
exports.getAllBioSkincare = (req, res) => {
  const sql = 'SELECT * FROM bio_skincare';
  db.query(sql, (err, results) => {
    if (err) {
      return errorResponse(res, err.message);
    }
    successResponse(res, 'All bios skincare retrieved successfully', results);
  });
};

// get bio skincare by query
exports.getBioSkincareByQuery = (req, res) => {
  const { query } = req.query;
  let sql = 'SELECT * FROM bio_skincare WHERE 1=1';
  const params = [];

  if (query) {
    sql += ' AND (name LIKE ? OR benefit LIKE ?)';
    const likeQuery = `%${query}%`;
    params.push(likeQuery, likeQuery);
  }

  db.query(sql, params, (err, results) => {
    if (err) {
      return errorResponse(res, err.message);
    }
    successResponse(res, 'Bios skincare retrieved successfully', results);
  });
};

// get bio skincare by id
exports.getBioSkincareById = (req, res) => {
  const { id } = req.params;
  const sql = 'SELECT * FROM bio_skincare WHERE id = ?';

  db.query(sql, [id], (err, results) => {
    if (err) {
      return errorResponse(res, err.message);
    }
    if (results.length === 0) {
      return errorResponse(res, 'Bio skincare not found', 404);
    }
    successResponse(res, 'Bio skincare retrieved successfully', results[0]);
  });
};

// edit nature dict
// delete nature dict
