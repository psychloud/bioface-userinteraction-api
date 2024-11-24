const express = require('express');
const dotenv = require('dotenv');

const PORT = 3000;
const db = require('./config/db');
const bioArticleRoutes = require('./routes/bioArticleRoutes');
const bioDictRoutes = require('./routes/bioDictRoutes');
const bioSkincareRoutes = require('./routes/bioSkincareRoutes');

const app = express();
const swaggerUi = require('swagger-ui-express');
const swaggerSpec = require('./config/swagger');

// Load env variables
dotenv.config();

app.use(express.json());

// routes
app.use(bioArticleRoutes);
app.use(bioDictRoutes);
app.use(bioSkincareRoutes);

// Swagger setup
app.use('/api-docs', swaggerUi.serve, swaggerUi.setup(swaggerSpec));

// Error handler (sementara)
app.use((err, req, res, next) => {
  console.error(err.stack);
  res.status(500).json({ message: 'Internal Server Error' });
});

app.listen(process.env.PORT || PORT, () => {
  console.log(`Server is running on port ${PORT}`);
});
