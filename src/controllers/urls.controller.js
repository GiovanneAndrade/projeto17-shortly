import * as allUrls from "../repositories/urls.repository.js";
import { nanoid } from 'nanoid'
async function getMeUrlsController(req, res) {
  try {    
    const result = await allUrls.getMeUrlsRepository();
    return res.send(result.rows);
  } catch (error) {
    return res.sendStatus(500).send(error);
  }
}
    
async function postUrlsController(req, res) {
  const { url } = req.body
  const userId = 1
  const shortUrl = nanoid()
  const visitCount = 0
  try {    
    await allUrls.postUrlsRepository({ url, userId, shortUrl, visitCount });
    return res.status(201).send({shortUrl});
  } catch (error) {
    return res.sendStatus(500).send(error);
  }
}

export { getMeUrlsController, postUrlsController }