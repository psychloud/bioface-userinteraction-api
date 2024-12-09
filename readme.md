# BioFace User Interaction API

This is the BioDict API, which provides endpoints for managing bio articles, bio dictionary entries, and bio skincare items.

## Installation
>app engine deploy with cloud sql public connection, unix socket.
1. Clone the repository
2. Install dependencies `npm install`
3. Create cloud sql DB with 'schema.sql' structure, use public connection, note the connection name (in the sql overview).
5. Change SQL environment variable in app.yaml file with the following structures:
   >customize with your database
```sh
    env_variables:
  - DB_USER: 'your_db_username'
  - DB_PASSWORD: 'your_db_password'
  - DB_NAME: 'your_database_name'
  - INSTANCE_UNIX_SOCKET: '/cloudsql/your-cloud-sql-connection name'
```
6. Change servers url inside `./config/swagger.js` with your base API URL, so later you can test the API with swagger 
7. Deploy the application `gcloud app deploy`
8. Attach Cloud SQL Client role to your app engine service account.


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