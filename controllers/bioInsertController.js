const db = require('../config/db');
const { successResponse, errorResponse } = require('../utils/responseHelper');

exports.insertBioArticle = async (req, res) => {
  const { title, source, content, image } = req.body;

  if (!title || !source || !content || !image) {
    return errorResponse(res, 'All fields are required', 400);
  }

  try {
    const sql = `INSERT INTO bio_article (title, source, content, image) VALUES (?, ?, ?, ?)`;
    const result = await db.query(sql, [title, source, content, image]);
    successResponse(res, 'Bio article inserted successfully', { id: result.insertId });
  } catch (err) {
    errorResponse(res, err.message);
  }
};

exports.insertBioDict = async (req, res) => {
  const { name, benefit, how_to_use, image } = req.body;

  if (!name || !benefit || !how_to_use || !image) {
    return errorResponse(res, 'All fields are required', 400);
  }

  try {
    const sql = `INSERT INTO bio_dict (name, benefit, how_to_use, image) VALUES (?, ?, ?, ?)`;
    const result = await db.query(sql, [name, benefit, how_to_use, image]);
    successResponse(res, 'Bio dictionary item inserted successfully', { id: result.insertId });
  } catch (err) {
    errorResponse(res, err.message);
  }
};

exports.insertBioSkincare = async (req, res) => {
  const { name, description, price, link_to_buy, image } = req.body;

  if (!name || !description || !price) {
    return errorResponse(res, 'Name, description, and price are required', 400);
  }

  try {
    const sql = `INSERT INTO bio_skincare (name, description, price, link_to_buy, image) VALUES (?, ?, ?, ?, ?)`;
    const result = await db.query(sql, [name, description, price, link_to_buy, image]);
    successResponse(res, 'Bio skincare item inserted successfully', { id: result.insertId });
  } catch (err) {
    errorResponse(res, err.message);
  }
};
