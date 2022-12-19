 
import * as allSessions from "../repositories/sessions.repository.js";
import { postUrlSchema } from "../schemas/urls.schema.js";


async function postUrlShortenMiddlewares(req, res, next) {
  const { authorization } = req.headers; 
  const { url } = req.body
  const token = authorization?.replace("Bearer ", "");
  if(!token) return res.sendStatus(401);
  const validationToken = await allSessions.getSessionRepository({ token });
  
  const validationUrl = postUrlSchema.validate(
    { url },
    { abortEarly: false }
  );

  if (validationToken.rows.length === 0) { 
    return res.sendStatus(401);
  }

  if (validationUrl.error) {
    const erro = validationUrl.error.details.map((err) => err.message);
    return res.status(422).send(erro);
  }

  next(); 
}
export {   postUrlShortenMiddlewares };
