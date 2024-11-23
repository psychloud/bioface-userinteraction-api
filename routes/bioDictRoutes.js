const express = require('express');

const router = express.Router();
const bioDictController = require('../controllers/bioDictController');

// Middleware to check for query parameter
const checkQuery = (req, res, next) => {
  if (req.query.query) {
    return bioDictController.getBioByQuery(req, res);
  }
  next();
};

/**
 * @swagger
 * /bio/{id}:
 *   get:
 *     summary: Retrieve a single bio by ID
 *     parameters:
 *       - in: path
 *         name: id
 *         schema:
 *           type: integer
 *         required: true
 *         description: The ID of the bio to retrieve
 *     responses:
 *       200:
 *         description: A single bio
 *         content:
 *           application/json:
 *             schema:
 *               type: object
 *       404:
 *         description: Bio not found
 */
router.get('/bio/:id', bioDictController.getBioById);

/**
 * @swagger
 * /bio:
 *   get:
 *     summary: Retrieve a list of bios
 *     description: Retrieve a list of bios. You can optionally provide a query parameter to search for bios by name or benefit.
 *     parameters:
 *       - in: query
 *         name: query
 *         schema:
 *           type: string
 *         description: The query to search for bios (optional)
 *     responses:
 *       200:
 *         description: A list of bios
 *         content:
 *           application/json:
 *             schema:
 *               type: array
 *               items:
 *                 type: object
 */
router.get('/bio', checkQuery, bioDictController.getAllBio);

module.exports = router;
