// config/swagger.js
const swaggerJSDoc = require('swagger-jsdoc');

const options = {
  definition: {
    openapi: '3.0.0',
    info: {
      title: 'BIOFACE API DOCUMENTATION',
      version: '1.0.0',
      description: 'API documentation for BIOFACE application'
    },
    servers: [
      {
        url: 'your-base-url-here'
      }
    ]
  },
  apis: ['./routes/*.js', './controllers/*.js'] // Path to the API docs
};

const swaggerSpec = swaggerJSDoc(options);

module.exports = swaggerSpec;
