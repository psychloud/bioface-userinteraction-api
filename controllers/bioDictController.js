const db = require('../config/db');
const { successResponse, errorResponse } = require('../utils/responseHelper');

// get all bio from database
exports.getAllBio = (req, res) => {
  const sql = 'SELECT * FROM bio_dict';
  db.query(sql, (err, results) => {
    if (err) {
      return errorResponse(res, err.message);
    }
    successResponse(res, 'All bios retrieved successfully', results);
  });
};

// get bio by query
exports.getBioByQuery = (req, res) => {
  const { query } = req.query;
  let sql = 'SELECT * FROM bio_dict WHERE 1=1';
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
    successResponse(res, 'Bios retrieved successfully', results);
  });
};

// get bio by id
exports.getBioById = (req, res) => {
  const { id } = req.params;
  const sql = 'SELECT * FROM bio_dict WHERE id = ?';

  db.query(sql, [id], (err, results) => {
    if (err) {
      return errorResponse(res, err.message);
    }
    if (results.length === 0) {
      return errorResponse(res, 'Bio not found', 404);
    }
    successResponse(res, 'Bio retrieved successfully', results[0]);
  });
};

// edit nature dict
// delete nature dict
