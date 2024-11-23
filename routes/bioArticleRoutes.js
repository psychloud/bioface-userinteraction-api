const express = require('express');

const router = express.Router();
const bioArticlesController = require('../controllers/bioArticlesController');

// Middleware to check for query parameter
const checkQuery = (req, res, next) => {
  if (req.query.query) {
    return bioArticlesController.getArticlesByQuery(req, res);
  }
  next();
};

/**
 * @swagger
 * /articles/{id}:
 *   get:
 *     summary: Retrieve a single article by ID
 *     parameters:
 *       - in: path
 *         name: id
 *         schema:
 *           type: integer
 *         required: true
 *         description: The ID of the article to retrieve
 *     responses:
 *       200:
 *         description: A single article
 *         content:
 *           application/json:
 *             schema:
 *               type: object
 *       404:
 *         description: Article not found
 */
router.get('/articles/:id', bioArticlesController.getArticlesById);

/**
 * @swagger
 * /articles:
 *   get:
 *     summary: Retrieve a list of articles
 *     description: Retrieve a list of articles. You can optionally provide a query parameter to search for articles by title or content.
 *     parameters:
 *       - in: query
 *         name: query
 *         schema:
 *           type: string
 *         description: The query to search for articles (optional)
 *     responses:
 *       200:
 *         description: A list of articles
 *         content:
 *           application/json:
 *             schema:
 *               type: array
 *               items:
 *                 type: object
 */
router.get('/articles', checkQuery, bioArticlesController.getAllArticles);

module.exports = router;
