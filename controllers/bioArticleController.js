const db = require('../config/db');
const { successResponse, errorResponse } = require('../utils/responseHelper');
const executeQuery = (sql, params = []) =>
  new Promise((resolve, reject) => {
    db.query(sql, params, (err, results) => {
      if (err) return reject(err);
      resolve(results);
    });
  });

exports.getAllArticles = async (req, res) => {
  try {
    const sql = 'SELECT * FROM bio_article';
    const results = await executeQuery(sql);
    if (results.length === 0) {
      return errorResponse(res, 'No articles found', 404);
    }
    successResponse(res, 'Articles retrieved successfully', results);
  } catch (err) {
    errorResponse(res, err.message);
  }
};

exports.getArticlesByQuery = async (req, res) => {
  const { query } = req.query;
  let sql = 'SELECT * FROM bio_article WHERE 1=1';
  const params = [];

  if (query) {
    sql += ' AND (title LIKE ? OR content LIKE ?)';
    params.push(`%${query}%`, `%${query}%`);
  }

  try {
    const results = await executeQuery(sql, params);
    if (results.length === 0) {
      return errorResponse(res, 'No articles found matching your query', 404);
    }
    successResponse(res, 'Articles retrieved successfully', results);
  } catch (err) {
    errorResponse(res, err.message);
  }
};

exports.getArticlesById = async (req, res) => {
  const { id } = req.params;
  if (!id || isNaN(id)) {
    return errorResponse(res, 'Invalid ID provided', 400);
  }

  try {
    const sql = 'SELECT * FROM bio_article WHERE id = ?';
    const results = await executeQuery(sql, [id]);

    if (results.length === 0) {
      return errorResponse(res, 'Article not found', 404);
    }

    successResponse(res, 'Article retrieved successfully', results[0]);
  } catch (err) {
    errorResponse(res, err.message);
  }
};
