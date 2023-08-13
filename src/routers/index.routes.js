import { Router } from "express"
import signinRouter from "./sigin.routes.js";
import userRouter from "./user.routes.js";


const router = Router();
router.use(userRouter);
router.use(signinRouter);


export default router;