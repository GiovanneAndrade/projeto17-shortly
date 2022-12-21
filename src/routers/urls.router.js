import { Router } from "express";
import {
  deleteUrlController,
  getIdUrlsController,
  getMeUrlsController,
  getUrlsOpenController,
  postUrlsShortenController,
} from "../controllers/urls.controller.js";
import {
  getUrlMeMiddlewares,
  getUrlsOpenMiddlewares,
  postUrlShortenMiddlewares,
  postUrlsMiddlewares,
  validationSessionMiddlewares,
} from "../middlewares/urls.middlewares.js";

const router = Router();

router.get("/urls/:id", postUrlsMiddlewares, getIdUrlsController);
router.post(
  "/urls/shorten",
  postUrlShortenMiddlewares,
  postUrlsShortenController
);
router.get(     
  "/urls/open/:shortUrl",
  getUrlsOpenMiddlewares,
  getUrlsOpenController
);
router.get("/users/me",getUrlMeMiddlewares, getMeUrlsController);
router.delete("/urls/:id", validationSessionMiddlewares, deleteUrlController);

export default router;
