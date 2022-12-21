import connection from "../database/db.js";

async function getIdUrlsRepository({ idUrl }) {
  const result = await connection.query(
    `
      SELECT * FROM urls where id = ${idUrl};
    `
  );
  return result;
}
async function consultNameUserRepository({ id }) {
  const result = await connection.query(
    `
      SELECT * FROM users where id = ${id};
    `
  );
  return result;
}


async function getUrlsUpdateRedirectRepository({ visitCount, shortUrl }) {
  const result = await connection.query(
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
