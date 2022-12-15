import { Router } from "express"
import { getMeUrlsController, postUrlsController } from "../controllers/urls.controller.js"
   

const router = Router() 
    
router.get('/urls', getMeUrlsController)
router.post('/urls', postUrlsController)
 

export default router