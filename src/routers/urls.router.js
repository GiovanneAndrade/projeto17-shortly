import { Router } from "express"
import { getIdUrlsController, postUrlsController } from "../controllers/urls.controller.js"
import { postUrlShortenMiddlewares, postUrlsMiddlewares } from "../middlewares/urls.middlewares.js"
   

const router = Router() 
    
router.get('/urls/:id', postUrlsMiddlewares, getIdUrlsController)
router.post('/urls/shorten', postUrlShortenMiddlewares, postUrlsController)
 

export default router