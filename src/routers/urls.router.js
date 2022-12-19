import { Router } from "express"
import {   postUrlsController } from "../controllers/urls.controller.js"
import { postUrlShortenMiddlewares } from "../middlewares/urls.middlewares.js"
   

const router = Router() 
    

router.post('/urls/shorten', postUrlShortenMiddlewares, postUrlsController)
 

export default router