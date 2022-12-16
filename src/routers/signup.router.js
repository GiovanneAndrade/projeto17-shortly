import { Router } from "express";
import { postSignupController } from "../controllers/signup.controller.js";
import { postSignupMiddlewares } from "../middlewares/signup.middlewares.js";

const router = Router();

router.post("/signup", postSignupMiddlewares, postSignupController);

export default router;
