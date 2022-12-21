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

function consultUserRepository({ id }) {
  const result = connection.query(
    `
      SELECT 
       urls.id, 
       urls.url, 
       urls."shortUrl", 
       urls."visitCount" 
      FROM urls 
      where "userId" = ${id}
    `
  );
  return result;
}
async function getUrlsRedirectRepository({ shortUrl }) {
  const result = await connection.query(
    `
      SELECT * FROM urls WHERE "shortUrl" = '${shortUrl}'
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

async function deleteUrlRepository({ id }) {
  const result = await connection.query(
    `
      DELETE FROM urls WHERE id = '${id}'
    `
  );
  return result;
}



export {
  consultNameUserRepository,
  consultUserRepository,
  deleteUrlRepository,
  getIdUrlsRepository,
  postUrlsRepository,
  getUrlsRedirectRepository,
  getUrlsUpdateRedirectRepository,
};
