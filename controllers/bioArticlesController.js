const db = require('../config/db');
const { successResponse, errorResponse } = require('../utils/responseHelper');
// get all articles from database
exports.getAllArticles = (req, res) => {
  const sql = 'SELECT * FROM bio_article';
  db.query(sql, (err, results) => {
    try {
      if (err) throw err;
      res.status(200).json({ data: results });
    } catch (err) {
      res.status(500).json({ error: err.message });
    }
  });
};

// get articles by query
exports.getArticlesByQuery = (req, res) => {
  const { query } = req.query;
  let sql = 'SELECT * FROM bio_article WHERE 1=1';

  if (query) {
    sql += ` AND (title LIKE '%${query}%' OR content LIKE '%${query}%')`;
  }

  db.query(sql, (err, results) => {
    try {
      if (err) throw err;
      res.status(200).json({ data: results });
    } catch (err) {
      res.status(500).json({ error: err.message });
    }
  });
};

// get article by id
exports.getArticlesById = (req, res) => {
  const { id } = req.params;
  const sql = 'SELECT * FROM bio_article WHERE id = ?';

  db.query(sql, [id], (err, results) => {
    if (err) {
      return errorResponse(res, err.message);
    }
    if (results.length === 0) {
      return errorResponse(res, 'article not found', 404);
    }
    successResponse(res, 'article retrieved successfully', results[0]);
  });
};

// edit article
// delete article
