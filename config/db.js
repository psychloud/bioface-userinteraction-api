const mysql = require('mysql2/promise');

const pool = mysql.createPool({
  user: process.env.DB_USER,
  password: process.env.DB_PASSWORD,
  database: process.env.DB_NAME,
  socketPath: process.env.INSTANCE_UNIX_SOCKET, // Pastikan socket path benar
  connectionLimit: 10, // Maksimal koneksi dalam pool
  waitForConnections: true,
  queueLimit: 0,
});

module.exports = {
  query: async (sql, params = []) => {
    try {
      const [results] = await pool.execute(sql, params);
      return results;
    } catch (error) {
      console.error('Query execution error:', error);
      throw error;
    }
  },
};
                                