import connection from "../database/db.js";

async function getMeUrlsRepository() {
  const result = await connection.query(
    `
      SELECT * FROM users;
    `
  );
  return result;
}

export { getMeUrlsRepository };
   