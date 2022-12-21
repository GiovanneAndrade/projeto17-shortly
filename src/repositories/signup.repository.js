import connection from "../database/db.js";


async function getConsultSignupRepository({email}) {
  const result = await connection.query(
    `
      SELECT * FROM users WHERE email = '${email}'
   `   
  );
  return result;
}
async function postSignupRepository({ name, email, password }) {
  const result = await connection.query(
    `
      INSERT INTO users ( 
        name, 
        email,
        password
      ) 
      VALUES 
        ($1, $2, $3)
   `,
    [name, email, password]
  );
  return result;
}
export { postSignupRepository, getConsultSignupRepository };
