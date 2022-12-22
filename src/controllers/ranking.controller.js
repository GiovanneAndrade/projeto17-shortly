import * as allRanking from '../repositories/ranking.repository.js'

async function getRankingController(req, res) {

  try {
    const result = await allRanking.getRankingRepository();
    return res.send(result.rows)
  } catch (error) {
    return res.sendStatus(500).send(error);
  }
}

export { getRankingController };
