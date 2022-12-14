import connection from "../database/db.js";

async function getMeUrlsRepository() {
  const result = await connection.query(
    `
      SELECT * FROM urls;
    `
  );
  return result;
}

export { getMeUrlsRepository };
   