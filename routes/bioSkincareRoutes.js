const express = require('express');

const router = express.Router();
const bioSkincareController = require('../controllers/bioSkincareController');

// Middleware to check for query parameter
const checkQuery = (req, res, next) => {
  if (req.query.query) {
    return bioSkincareController.getBioSkincareByQuery(req, res);
  }
  next();
};

/**
 * @swagger
 * /biosk/{id}:
 *   get:
 *     summary: Retrieve a single skincare item by ID
 *     parameters:
 *       - in: path
 *         name: id
 *         schema:
 *           type: integer
 *         required: true
 *         description: The ID of the skincare item to retrieve
 *     responses:
 *       200:
 *         description: A single skincare item
 *         content:
 *           application/json:
 *             schema:
 *               type: object
 *       404:
 *         description: Skincare item not found
 */
router.get('/biosk/:id', bioSkincareController.getBioSkincareById);

/**
 * @swagger
 * /biosk:
 *   get:
 *     summary: Retrieve a list of skincare items
 *     description: Retrieve a list of skincare items. You can optionally provide a query parameter to search for skincare items by name or benefit.
 *     parameters:
 *       - in: query
 *         name: query
 *         schema:
 *           type: string
 *         description: The query to search for skincare items (optional)
 *     responses:
 *       200:
 *         description: A list of skincare items
 *         content:
 *           application/json:
 *             schema:
 *               type: array
 *               items:
 *                 type: object
 */
router.get('/biosk', checkQuery, bioSkincareController.getAllBioSkincare);

module.exports = router;
