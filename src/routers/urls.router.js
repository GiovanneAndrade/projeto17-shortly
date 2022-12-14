import { Router } from "express"
import { getMeUrlsController } from "../controllers/urls.controller.js"
   

const router = Router() 
    
router.get('/urls', getMeUrlsController)
 

export default router