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
    return res.status(201).send({ shortUrl });
  } catch (error) {
    return res.sendStatus(500).send(error);
  }
}

async function getUrlsOpenController(req, res) {
  const { shortUrl } = req.params;
  const consultShortUrl = await allUrls.getUrlsRedirectRepository({ shortUrl });
  let visitCount = Number(consultShortUrl.rows[0].visitCount);
  visitCount++;
  try {
    await allUrls.getUrlsUpdateRedirectRepository({ visitCount, shortUrl });
    return res.redirect(consultShortUrl.rows[0].url);
  } catch (error) {
    return res.sendStatus(500).send(error);
  }
}

async function deleteUrlController(req, res) {
  const { id } = req.params;
  try {
    await allUrls.deleteUrlRepository({ id });
    return res.sendStatus(204);
  } catch (error) {
    return res.sendStatus(500).send(error);
  }
}



export {
  deleteUrlController,
  getIdUrlsController,
  postUrlsShortenController,
  getUrlsOpenController,
};
