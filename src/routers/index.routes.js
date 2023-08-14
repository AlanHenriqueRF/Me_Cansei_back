import { Router } from "express"
import signinRouter from "./sigin.routes.js";
import userRouter from "./user.routes.js";
import shoesRouter from "./shoes.routes.js";


const router = Router();
router.use(userRouter);
router.use(signinRouter);
router.use(shoesRouter)


export default router;