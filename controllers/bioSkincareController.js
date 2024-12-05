const db = require('../config/db');
const { successResponse, errorResponse } = require('../utils/responseHelper');
const executeQuery = (sql, params = []) =>
  new Promise((resolve, reject) => {
    db.query(sql, params, (err, results) => {
      if (err) return reject(err);
      resolve(results);
    });
  });

exports.getAllBioSkincare = async (req, res) => {
  try {
    const sql = 'SELECT * FROM bio_skincare';
    const results = await executeQuery(sql);
    if (results.length === 0) {
      return errorResponse(res, 'No bio skincare found', 404);
    }
    successResponse(res, 'Bio skincare retrieved successfully', results);
  } catch (err) {
    errorResponse(res, err.message);
  }
};

exports.getBioSkincareByQuery = async (req, res) => {
  const { query } = req.query;
  let sql = 'SELECT * FROM bio_skincare WHERE 1=1';
  const params = [];

  if (query) {
    sql += ' AND (name LIKE ? OR benefit LIKE ?)';
    params.push(`%${query}%`, `%${query}%`);
  }

  try {
    const results = await executeQuery(sql, params);
    if (results.length === 0) {
      return errorResponse(res, 'No bio skincare found matching your query', 404);
    }
    successResponse(res, 'Bio skincare retrieved successfully', results);
  } catch (err) {
    errorResponse(res, err.message);
  }
};

exports.getBioSkincareById = async (req, res) => {
  const { id } = req.params;
  if (!id || isNaN(id)) {
    return errorResponse(res, 'Invalid ID provided', 400);
  }

  try {
    const sql = 'SELECT * FROM bio_skincare WHERE id = ?';
    const results = await executeQuery(sql, [id]);

    if (results.length === 0) {
      return errorResponse(res, 'Bio skincare not found', 404);
    }

    successResponse(res, 'Bio skincare retrieved successfully', results[0]);
  } catch (err) {
    errorResponse(res, err.message);
  }
};
