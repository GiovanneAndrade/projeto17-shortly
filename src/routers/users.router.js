import { Router } from "express";
import { postSigninController } from "../controllers/signin.controller.js";
import { postSignupController } from "../controllers/signup.controller.js";
import { postSigninMiddlewares } from "../middlewares/signin.middlewares.js";
import { postSignupMiddlewares } from "../middlewares/signup.middlewares.js";

const router = Router();

router.post("/signup", postSignupMiddlewares, postSignupController);
router.post("/signin",postSigninMiddlewares, postSigninController);

export default router;
