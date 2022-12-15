import connection from "../database/db.js";

async function getMeUrlsRepository() {
  const result = await connection.query(
    `
      SELECT * FROM urls;
    `
  );
  return result;
}
async function postUrlsRepository({ url, userId, shortUrl, visitCount }) {
  const result = await connection.query(
    `
      INSERT INTO urls (
        url, 
        "userId", 
        "shortUrl", 
        "visitCount"
      )
      VALUES ( $1, $2, $3, $4);
    `,
    [url, userId, shortUrl, visitCount]
  );
  return result;
}

export { getMeUrlsRepository, postUrlsRepository };
