import connection from "../database/db.js";


async function postSessionRepository({ userId, token }) {
  
  const result = await connection.query(
    `
      INSERT INTO sessions ( 
        "userId", 
        token
      ) 
      VALUES 
        ($1, $2)
   `,
    [ userId, token ]
  );
  return result;
  
}
async function getSessionRepository({ token }) {
  
  const result = await connection.query(
    `
      SELECT * FROM sessions WHERE token = '${token}'
   `
    
  );
  return result;
  
}

export {
  postSessionRepository,
  getSessionRepository
}