const express = require('express');
const router = express.Router();
const bioInsertController = require('../controllers/bioInsertController');

/**
 * @swagger
 * /bio-article:
 *   post:
 *     summary: Add a new bio article
 *     requestBody:
 *       required: true
 *       content:
 *         application/json:
 *           schema:
 *             type: object
 *             properties:
 *               title:
 *                 type: string
 *               source:
 *                 type: string
 *               content:
 *                 type: string
 *               image:
 *                 type: string
 *     responses:
 *       201:
 *         description: Bio article added successfully
 *       400:
 *         description: Invalid input
 */
router.post('/bio-article', bioInsertController.insertBioArticle);

/**
 * @swagger
 * /bio-dict:
 *   post:
 *     summary: Add a new bio dictionary item
 *     requestBody:
 *       required: true
 *       content:
 *         application/json:
 *           schema:
 *             type: object
 *             properties:
 *               name:
 *                 type: string
 *               benefit:
 *                 type: string
 *               how_to_use:
 *                 type: string
 *               image:
 *                 type: string
 *     responses:
 *       201:
 *         description: Bio dictionary item added successfully
 *       400:
 *         description: Invalid input
 */
router.post('/bio-dict', bioInsertController.insertBioDict);

/**
 * @swagger
 * /bio-skincare:
 *   post:
 *     summary: Add a new bio skincare item
 *     requestBody:
 *       required: true
 *       content:
 *         application/json:
 *           schema:
 *             type: object
 *             properties:
 *               name:
 *                 type: string
 *               description:
 *                 type: string
 *               price:
 *                 type: integer
 *               link_to_buy:
 *                 type: string
 *                 nullable: true
 *               image:
 *                 type: string
 *                 nullable: true
 *     responses:
 *       201:
 *         description: Bio skincare item added successfully
 *       400:
 *         description: Invalid input
 */
router.post('/bio-skincare', bioInsertController.insertBioSkincare);

module.exports = router;
