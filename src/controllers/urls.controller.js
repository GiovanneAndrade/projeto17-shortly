import * as allUrls from "../repositories/urls.repository.js";
import { nanoid } from 'nanoid'
async function getMeUrlsController(req, res) {
  try {    
    const result = await allUrls.getIdUrlsRepository({ idUrl });
    const { id, shortUrl, url } = result.rows[0];
    return res.status(200).send({ id, shortUrl, url });
  } catch (error) {
    return res.sendStatus(500).send(error);
  }
}
    
async function postUrlsShortenController(req, res) {
  const { authorization } = req.headers;
  const token = authorization?.replace("Bearer ", "");
  const validationToken = await allSessions.getSessionRepository({ token });
  const { url } = req.body;
  const { userId } = validationToken.rows[0];
  const shortUrl = nanoid();
  const visitCount = 0;
  try {
    await allUrls.postUrlsRepository({ url, userId, shortUrl, visitCount });
    return res.status(201).send({shortUrl});
  } catch (error) {
    return res.sendStatus(500).send(error);
  }
}

export { getMeUrlsController, postUrlsController }