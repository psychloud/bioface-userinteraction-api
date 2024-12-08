const express = require('express');
const dotenv = require('dotenv');

const swaggerUi = require('swagger-ui-express');
const db = require('./config/db');

const bioArticleRoutes = require('./routes/bioArticleRoutes');
const bioDictRoutes = require('./routes/bioDictRoutes');
const bioSkincareRoutes = require('./routes/bioSkincareRoutes');
const bioInsertRoutes = require('./routes/bioInsertRoutes');

const app = express();
const swaggerSpec = require('./config/swagger');

// Load env variables
dotenv.config();

app.use(express.json()); // swagger connection
// routes
app.use(bioArticleRoutes);
app.use(bioDictRoutes);
app.use(bioSkincareRoutes);
app.use(bioInsertRoutes);

// Swagger setup
app.use('/api-docs', swaggerUi.serve, swaggerUi.setup(swaggerSpec));

// Error handler (sementara)
app.use((err, req, res, next) => {
  console.error('Full Error Details:', {
    message: err.message,
    stack: err.stack,
    name: err.name
  });
  res.status(500).json({ 
    error: 'Internal Server Error',
    details: err.message 
  });
});




const PORT = process.env.PORT || 3000;
app.listen(PORT, () => {
  console.log(`Server is running on port ${PORT}`);
  console.log('Socket Path:', process.env.INSTANCE_UNIX_SOCKET);
});

