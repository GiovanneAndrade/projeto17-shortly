import * as allUrls from "../repositories/urls.repository.js";

async function getMeUrlsController(req, res) {
  try {    
    const result = await allUrls.getMeUrlsRepository();
    return res.send(result.rows);
  } catch (error) {
    return res.sendStatus(500).send(error);
  }
}

export { getMeUrlsController }