import * as allSessions from "../repositories/sessions.repository.js";

async function validationSessions({ authorization }) {
  const token = authorization?.replace("Bearer ", "");
  const validationToken = await allSessions.getSessionRepository({ token });
  const result = validationToken.rows;
     
  return result; 
}  
export { validationSessions };
