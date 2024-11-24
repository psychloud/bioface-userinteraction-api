# BioDict API

This is the BioDict API, which provides endpoints for managing bio articles, bio dictionary entries, and bio skincare items.

## Installation
1. Clone the repository
2. Install dependencies `npm install`
3. Create a .env file with the following variables set:
   >[customize with your database]
    - PORT=3000
    - DB_HOST=localhost
    - DB_USER=root
    - DB_PASS=password
    - DB_NAME=bioface_db
4. Run the application : `npm run start`

## API Documentation
The API documentation is available at /api-docs when the server is running.

**Endpoints**

**Bio Articles**  
- `GET /articles`: Retrieve a list of articles  
- `GET /articles/:id`: Retrieve a single article by ID  
- `GET /articles?query=searchTerm`: Retrieve articles by title or content containing the search term  
**Bio Dictionary**  
- `GET /bio`: Retrieve a list of bios  
- `GET /bio/:id`: Retrieve a single bio by ID  
- `GET /bio?query=searchTerm`: Retrieve bios by name or benefit containing the search term  
**Bio Skincare**  
- `GET /biosk`: Retrieve a list of skincare items  
- `GET /biosk/:id`: Retrieve a single skincare item by ID  
- `GET /biosk?query=searchTerm`: Retrieve skincare items by name or benefit containing the search term  
   
