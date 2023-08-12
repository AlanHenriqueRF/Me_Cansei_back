import { Router } from "express"
import signinRouter from "./sigin.routes.js";


const router = Router();
router.use(signinRouter);


export default router;